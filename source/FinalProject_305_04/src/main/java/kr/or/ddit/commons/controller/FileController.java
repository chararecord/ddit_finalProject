package kr.or.ddit.commons.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import kr.or.ddit.commons.service.FileService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class FileController {
	
	@Value("#{appInfo.imageFolder}")
	private File imageFolder;
	
	@Value("#{appInfo.imageFolder}")
	private String imageFolderURL;
	
	@PostConstruct
	public void init() throws IOException {
		log.info("이미지 저장 경로 : {}", imageFolder.getCanonicalPath());
		if(!imageFolder.exists()) {
			imageFolder.mkdirs();
		}
	}
	
	@Inject
	private FileService fileService;
	
	@GetMapping(value="/download/{attaId}", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public void download(
			@PathVariable String attaId
			, HttpServletResponse resp
			) throws Exception {
		
		File file = new File(imageFolderURL, attaId);
		
		resp.setContentType("application/download");
		resp.setContentLength((int) file.length());
		resp.setHeader("Content-disposition", "attachment;filename=\"" + file + "\"" );
		
		OutputStream os = resp.getOutputStream();
		
		FileInputStream fis = new FileInputStream(file);
		FileCopyUtils.copy(fis, os);
		fis.close();
		os.close();
	}
}

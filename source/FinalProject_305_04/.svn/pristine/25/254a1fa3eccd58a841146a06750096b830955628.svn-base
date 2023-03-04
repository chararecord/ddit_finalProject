package kr.or.ddit.student.tuition.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.commons.service.PdfService;
import lombok.extern.slf4j.Slf4j;

/**
 * 등록금 '미납' 고지서 조회(학생)
 * @author 이현주
 * @Since 2023. 2. 6.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 6.       이현주      		생성
 * 2023. 2. 27		이현주			수정
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Controller
public class TuitionBillController {
//	@Inject
//	TuitionService tuitionService;

	@Inject
	PdfService pdfService;

	//PDF변환
	@PostMapping("/student/tuition/tuitionBill")
	public ResponseEntity<String> convertpdf(
			String filename
			,String htmlStr
			, HttpServletRequest request) {

		log.info("htmlStr : " + htmlStr);
		
		htmlStr = "<span>test</span>";
		
		//htmlStr : 만들 대상 html
		this.pdfService.createHtmlPdf("test", htmlStr, request);
		
		ResponseEntity<String> entity = new ResponseEntity<String>("success",HttpStatus.OK);
		
		return entity;
	}
	
	@ResponseBody
	@GetMapping("/thisispdf")
	public void showPdf(
		HttpServletResponse resp
	) throws IOException {
		File file = new File("D://test.pdf");
		FileInputStream fis = null;
		OutputStream os = null;
		resp.setContentType("application/pdf");
		try {
			fis = new FileInputStream(file);
			os = resp.getOutputStream();
			int read = -1;
			while((read = fis.read()) != -1) {
				os.write(read);
				os.flush();
			}
		} finally {
			if (fis != null) {
				fis.close();
			}
			if (os != null) {
				os.close();
			}
		}
	}
}






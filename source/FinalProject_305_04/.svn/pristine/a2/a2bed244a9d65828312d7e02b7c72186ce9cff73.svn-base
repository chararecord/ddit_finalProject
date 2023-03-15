package kr.or.ddit.commons.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.campus.certificate.service.CertHistoryService;
import kr.or.ddit.commons.service.PdfCertService;
import kr.or.ddit.vo.UsrVOWrapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
public class PdfCertificateController {
	
	private final PdfCertService pdfCertService;
	private final CertHistoryService certService;

	@PostMapping("/certificateBox/view") 
	public String certView(
		@AuthenticationPrincipal UsrVOWrapper principal
		, @RequestParam String certHistId
//		, @RequestParam String userId
		, Model model
	) {
		log.info("증명서아이디체크{} ", certHistId);
//		log.info("아이디체크{} ", userId);
		
		String userId = principal.getRealUser().getUserId();
//		log.info("증명증명서{}", certHistId);
//		log.info("누구누구야{}", userId);
		
		List<Map<String,String>> enrollment = certService.retrieveEnrollment(userId, certHistId);
		log.info("재학증명서==={}", enrollment);
		model.addAttribute("enrollment", enrollment);
		
		return "campus/certificate/enrollCertificate";
	}
	
	
	@PostMapping("/certificateBox/create")
	public ResponseEntity<String> createHtmlPdf(
		String filename
		, String htmlStr
		, HttpServletRequest request
		, @RequestBody Map<String, String> map
	) {
		
		log.info("create");
		filename = "enroll";
		htmlStr = map.get("htmlStr");

		this.pdfCertService.createHtmlPdf(filename, htmlStr, request);
		ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		
		log.info("entity를찍어보자{}", entity);
		return entity;
	}
	
	
	@ResponseBody
	@GetMapping("/certificateBox/certificate")
	public void viewPdf(
		HttpServletResponse resp	
	) throws IOException {
		File file = new File("D://pdf/enroll.pdf");
//		File file = new File("/Users/eunho/Downloads/enroll.pdf");
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
			if(fis != null) {
				fis.close();
			}
			if(os != null) {
				os.close();
			}
		}
	}
}

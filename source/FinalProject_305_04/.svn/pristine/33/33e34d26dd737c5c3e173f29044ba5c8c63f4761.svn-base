//package kr.or.ddit.commons.controller;
//
//import java.io.File;
//import java.io.FileInputStream;
//import java.io.FileNotFoundException;
//import java.io.IOException;
//import java.io.OutputStream;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.security.core.annotation.AuthenticationPrincipal;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import kr.or.ddit.campus.certificate.service.CertHistoryService;
//import kr.or.ddit.commons.service.PdfService;
//import kr.or.ddit.vo.UsrVOWrapper;
//import lombok.RequiredArgsConstructor;
//import lombok.extern.slf4j.Slf4j;
//
//@Slf4j
////@RequiredArgsConstructor
//@Controller
//public class PdfCertificateController {
//	
//	private final PdfService pdfService;
//	private final CertHistoryService certService;
//
//	@ResponseBody
//	@GetMapping("/certificateBox/view") 
//	public String certView(
//		@AuthenticationPrincipal UsrVOWrapper principal
//		, @RequestParam String certHistId
//	) {
//		
//		String userId = principal.getRealUser().getUserId();
//		log.info("증명증명서{}", certHistId);
//		log.info("누구누구야{}", userId);
//		
//		return "campus/certificate/certificateBox";
////		return "가는 건가";
//	}
//	
//	
//	
//	@PostMapping("/certificateBox/print")
//	public ResponseEntity<String> createHtmlPdf(
//		String filename
//		, String htmlStr
//		, HttpServletRequest request) {
//		
//		log.info("프린트");
//		filename = "테스트";
//
//		this.pdfService.createHtmlPdf("테스트", htmlStr, request);
//		ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
//		
//		return entity;
//	}
////	
////	@ResponseBody
////	@GetMapping("/")
////	public void viewPdf(
////		HttpServletResponse resp	
////	) throws IOException {
////		File file = new File("D://pdf/enroll.pdf");
////		FileInputStream fis = null;
////		OutputStream os = null;
////		resp.setContentType("application/pdf");
////		try {
////			fis = new FileInputStream(file);
////			os = resp.getOutputStream();
////			int read = -1;
////			while((read = fis.read()) != -1) {
////				os.write(read);
////				os.flush();
////			}
////		} finally {
////			if(fis != null) {
////				fis.close();
////			}
////			if(os != null) {
////				os.close();
////			}
////		}
////	}
//}

package kr.or.ddit.commons.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.commons.service.PdfService;
import kr.or.ddit.student.tuition.service.TuitionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/pdf")
@RequiredArgsConstructor
public class PdfController {
	
	private final PdfService pdfService;
	private final TuitionService tuitionService;
	
	@GetMapping
	public String pdfView() {
		
		log.info("pdfView 진입");
		
		return "student/tuition/tuitionChecking";
	}
	
	@PostMapping("/createPdf")
	public ResponseEntity<String> createPdf(
		String fileName
		, String htmlStr
		, HttpServletRequest request
		, @RequestBody Map<String, String> map
		) throws IOException{
		
		fileName = "pdfTest";
		htmlStr = map.get("htmlStr");
		
		this.pdfService.createHtmlPdf("test", htmlStr, request);
		
		ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		
		return entity;
	}
}

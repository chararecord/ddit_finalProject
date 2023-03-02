package kr.or.ddit.commons.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

public interface PdfService {
	
	public String createPdf(String stdId, String SemeId);
	
	public MultipartFile createHtmlPdf(String filename, String htmlStr, HttpServletRequest request);
}

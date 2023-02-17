package kr.or.ddit.campus.certificate.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.campus.certificate.service.CertificateService;
import kr.or.ddit.student.record.service.RecordService;
import kr.or.ddit.vo.CertHistoryVO;
import kr.or.ddit.vo.CertificateVO;
import kr.or.ddit.vo.UsrVO;

/**
 * @author 장은호
 * @Since 2023. 2. 6.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 6.       장은호        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Controller
public class CertificateController {
	
	@Inject
	private CertificateService service;
	
	@GetMapping("/campus/certificate/list")
	public String certificateList(
		Model model
	) {
		List<CertificateVO> certList = service.retrieveCertificateList();
		model.addAttribute("certList", certList);
		
		return "campus/certificate/certificateList";
	}
	
	
	@GetMapping("/campus/certificate/{userId}")
	public String certificate(
		@PathVariable int userId
		, Model model
	) {
		// 사용자 기본 정보
		UsrVO usrVO = service.retrieveUserInfo(userId);
		model.addAttribute("usrVO", usrVO);
		
		// 전체 증명서 중 사용자 권한 별로 조회
		List<CertificateVO> userCertList = service.retrieveUserCertificateList(userId);
		model.addAttribute("userCertList", userCertList);
		
		return "campus/certificate/certificate";
	}
	
	
//	@RequestMapping("/campus/certificateBox/{userId}")
//	public String certificateBox(
//		@PathVariable int userId	
//		, Model model
//	) {
//		UsrVO usrVO = service.retrieveUserInfo(userId);
//		model.addAttribute("usrVO", usrVO);
//		
//		List<CertHistoryVO> certHistoryList = service.retrieveCertHistoryList(userId);
//		model.addAttribute("certHistoryList", certHistoryList);
//		
//		return "campus/certificate/certificateBox";
//	}
	
}






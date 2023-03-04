package kr.or.ddit.prof.scoreProc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.prof.scoreProc.service.ScoreProcessService;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import kr.or.ddit.vo.SyllabusVO;
import kr.or.ddit.vo.UsrVO;
import kr.or.ddit.vo.UsrVOWrapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * @author PC-17
 * @Since 2023. 2. 6.
 * <pre>
 * 성적처리 컨트롤러
 * ======[[개정이력(Modification Information)]]======
 *   수정일          수정자             수정내용
 * --------          --------    -----------------------
 * 2023. 2. 6.       서범수        성적처리 컨트롤러 생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Slf4j
@Controller
@RequestMapping("/prof/scoreProc")
@RequiredArgsConstructor
public class ScoreProcController {
	
	@Autowired
	private final ScoreProcessService service;
	
	@ModelAttribute("lecture")
	public LectureVO lecture() {
		return new LectureVO();
	}
	
	
	@GetMapping
	public String scoreProcessUI(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
			, @ModelAttribute("simpleCondition") SearchVO searchVO
			, @AuthenticationPrincipal UsrVOWrapper principal
			, Model model
		) {
		
		log.info("scoreProcessUI 진입");
		UsrVO realUser = principal.getRealUser();
		String profId = realUser.getUserId();
		service.setProfId(profId);
		
		PagingVO<LectureVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		service.retrieveLectList(pagingVO);
		System.out.println("그다음 pagingVO 값은?" + pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		
		return "prof/scoreProcess/scoreProcess";
	}
	
	
	@GetMapping(produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String scoreProcessData(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
			, @ModelAttribute("simpleCondition") SearchVO searchVO
			, @AuthenticationPrincipal UsrVOWrapper principal
			, Model model	
		) {
		
		log.info("scoreProcessData 진입");
		UsrVO realUser = principal.getRealUser();
		
		PagingVO<LectureVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		service.retrieveLectList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		
		return "jsonView";
	}
	
}

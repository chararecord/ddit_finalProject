package kr.or.ddit.prof.lectBoard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.prof.lectBoard.service.LectureBoardService;
import kr.or.ddit.vo.LectNotiVO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 민경진
 * @Since 2023. 2. 8.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 8.       민경진               생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/prof/lectBoard")
@Controller
public class LectureBoardController {
	
	private final LectureBoardService service;
	
	@GetMapping("/{lectId}")
	public String lectInfoAndList(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
			, @PathVariable String lectId
			, @ModelAttribute("simpleCondition") SearchVO simpleCondition
			, Model model
			) {
		PagingVO<LectNotiVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(simpleCondition);
		
		service.retrieveLectNoticeList(pagingVO);
		LectureVO lectInfo = service.retrieveLectInfo(lectId);
		
		model.addAttribute("lectInfo", lectInfo);
		model.addAttribute("pagingVO", pagingVO);
		
		return "prof/lectBoard/lectBoard";
	}
	
	@GetMapping("/ref")
	public String lectNotice() {
		return "prof/lectBoard/lectRef";
	}
}
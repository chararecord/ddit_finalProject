package kr.or.ddit.student.tuition.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.student.tuition.service.TuitionService;
import kr.or.ddit.vo.TuitionPayVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * 등록금 납부 내역 조회(학생)
 * @author 민경진
 * @Since 2023. 2. 2.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 2.       민경진			생성
 * 2023. 2. 24.      이현주			수정
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/student/tuitionList")
public class TuitionListController {

	@Autowired
	private final TuitionService service;

	@ModelAttribute
	public TuitionPayVO tuitionList() {
		return new TuitionPayVO();
	}

	@GetMapping
	public String tuition(
			@RequestParam("stdId") String stdId
			, Model model) {

		List<TuitionPayVO> tuitionPayVO = service.retrieveTuitionList(stdId);

		model.addAttribute("tuitionPayVO", tuitionPayVO);

		return "student/tuition/tuitionList";
	}
}

package kr.or.ddit.emp.tuitionManage.controller;


import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.context.annotation.Bean;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.filter.HiddenHttpMethodFilter;

import kr.or.ddit.emp.tuitionManage.service.TuitionEmpSerivce;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import kr.or.ddit.vo.TuitionPayVO;
import kr.or.ddit.vo.TuitionVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


/**
 * 등록금 납부 현황 조회(교직원) 및 등록금 고지서 발송
 * @author 민경진
 * @Since 2023. 2. 2.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 2.       민경진             생성
 * 2023. 2. 3 		  이현주		수정
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/emp/tuitionManage/tuitionSend")
public class TuitionEmpController {

	@Inject
	private TuitionEmpSerivce service;


	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;

	@Bean
	public HiddenHttpMethodFilter hiddenHttpMethodFilter() {
		return new HiddenHttpMethodFilter();
	}


	/**
	 * TuitionVO 속성 생성 메소드
	 */
	@ModelAttribute("tuition")
	public TuitionVO tuition() {
		return new TuitionVO();
	}


	/**
	 * TuitionPayVO 속성 생성 메소드
	 */
	@ModelAttribute("tuitionPay")
	public TuitionPayVO tuitionPay() {
		return new TuitionPayVO();
	}

	/**
	 * tuiitionStdList 고지서 발송할 학생들 목록 출력 메소드(selectList)
	 */
	@GetMapping
	public String tuitionStdListUI(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
			,@RequestParam(value="semeId", required=true )String semeId
			, @ModelAttribute("simpleCondition") SearchVO searchVO
			, Model model
			) {

		PagingVO<TuitionVO> pagingVO = new PagingVO<>(10,5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);

		TuitionVO tuitionVO = new TuitionVO();
		tuitionVO.setSemeId(semeId);
		pagingVO.setDetailCondition(tuitionVO);

		service.retrieveTuitionStdList(pagingVO, semeId);

		model.addAttribute("pagingVO", pagingVO);
		return "emp/tuitionManage/tuitionSend";
	}

	/**
	 * tuitionStdList 고지서 발송할 목록 출력 메소드(ajax)
	 * @param semeId
	 * @param searchVO
	 * @param model
	 * @return
	 */
	@GetMapping(produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String tuitionStdList(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
			,@RequestParam(value="semeId", required=true )String semeId
			, @ModelAttribute("simpleCondition") SearchVO searchVO
			, Model model
			) {

		PagingVO<TuitionVO> pagingVO = new PagingVO<>(10,5);
		pagingVO.setCurrentPage(currentPage);


		TuitionVO tuitionVO = new TuitionVO();
		tuitionVO.setSemeId(semeId);
		pagingVO.setDetailCondition(tuitionVO);

		service.retrieveTuitionStdList(pagingVO, semeId);

		model.addAttribute("pagingVO", pagingVO);
		model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));

		return "jsonView";
	}



	//등록금 고지서 발송(교직원)
	//요청파라미터 : let formData = new FormData()
	//ResponseBody : 응답데이터(주로 json을 리턴 시) => success : function(resp) {
	//RequestBody : 요청데이터타입이 json일 때(data:JSON.stringify(data)..
	@ResponseBody
	@PostMapping
	public String callProcedure(
			String[] stuIdArr, String semeId){
		log.info("stuIdArr : " + stuIdArr);
		log.info("semeId : " + semeId);
		
		for(String stuId : stuIdArr) {
			log.info("stuId : " + stuId);
		}
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("semeId",semeId);
		
		service.createTuitionSend(map);

		return "1";
	}

}

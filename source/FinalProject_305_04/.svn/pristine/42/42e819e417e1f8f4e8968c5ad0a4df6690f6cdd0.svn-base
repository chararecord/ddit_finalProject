package kr.or.ddit.prof.consult.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.security.acls.model.NotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.prof.consult.service.ProfessorConsultReplyService;
import kr.or.ddit.prof.consult.service.ProfessorConsultService;
import kr.or.ddit.student.consult.service.StudentConsultService;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.vo.ConsultVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import kr.or.ddit.vo.UsrVO;
import lombok.extern.slf4j.Slf4j;

/**
 *  학생 상담 컨트롤러(교수)
 * @author 민경진
 *
 */
@Slf4j
@Controller
@RequestMapping("/prof/consult")
public class ProfessorConsultController {
	
	@Inject
	private ProfessorConsultService service;
	
	@Inject
	private StudentConsultService studentService;
	
	@Inject
	private ProfessorConsultReplyService replyService;
	
	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;
	
	/**
	 * professor consult 속성 생성 메소드 - form에 바인딩할 빈 모델 객체 생성
	 * @return
	 */
	@ModelAttribute("consult")
	public ConsultVO professorConsult() {
		return new ConsultVO();
	}
	
	/**
	 * professor consult 게시판 UI 출력 메소드
	 * @return
	 */
	@GetMapping
	public String consultUI(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
			, @ModelAttribute("simpleCondition") SearchVO searchVO
			, Model model
			) {
		
		PagingVO<UsrVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		model.addAttribute("pagingVO", pagingVO);
		
		return "prof/consult/consult";
	}
	
	/**
	 * professor consult 학생 목록 출력 메소드
	 * @return
	 */
	@ResponseBody
	@GetMapping(value="/{id}", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public PagingVO<UsrVO> consultList(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
			, @ModelAttribute("simpleCondition") SearchVO searchVO
			, @PathVariable String id
			) {
		
		log.info("id==========================================={}", id);
		
		PagingVO<UsrVO> stdList = service.retrieveStdList(id);
		
		return stdList;
	}
	
	/**
	 * professor consult 학생 개개인의 상담 목록 출력 메소드
	 * @return
	 */
	@GetMapping(produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String consultListData(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
			, @ModelAttribute("simpleCondition") SearchVO searchVO
			, @RequestParam String stdId
			, @RequestParam String profId
			, Model model
			) {
		PagingVO<ConsultVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		ConsultVO consultVO = new ConsultVO();
		consultVO.setStdId(stdId);
		consultVO.setProfId(profId);
		
		log.info("stdId >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> {}" , stdId);
		log.info("profId >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> {}" , profId);
		
		service.retrieveConsultList(pagingVO, stdId, profId);
		
		try {
			List<ConsultVO> dataList = pagingVO.getDataList();
		} catch (Exception e) {
			throw new NotFoundException("게시글이 없습니다.");
		}
		
		model.addAttribute("pagingVO", pagingVO);
		model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));
		
		return "jsonView";
	}
	
	/**
	 * 상담 게시글 하나 조회 메소드 
	 */
	@ResponseBody
	@GetMapping(value="/{id}/{consId}", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ConsultVO consultData(
			@PathVariable String consId
			, @PathVariable String id
			) {
		
		ConsultVO consult = studentService.retrieveConsult(consId);
		
		return consult;
	}
	
	/**
	 * 상담 게시글 상태 수정
	 */
	@ResponseBody
	@PostMapping(value="/{id}/{consId}", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String updateConsultState(
			@RequestBody ConsultVO consultVO
			, @PathVariable String consId
			, @PathVariable String id
			, Model model
			) {
		String viewName = null;
		int rowcnt = service.modifyConsultStatus(consultVO);
		if(rowcnt > 0) {
			viewName = "ok";
		} else {
			model.addAttribute("message", "서버 오류");
			viewName = "no";
		}
		return viewName;
	}
	
	
}

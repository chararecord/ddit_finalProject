package kr.or.ddit.student.assignment.controller;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.student.assignment.service.AssignmentService;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.validate.InsertGroup;
import kr.or.ddit.vo.AssignmentSubmitVO;
import kr.or.ddit.vo.AssignmentVO;
import kr.or.ddit.vo.CurrLectVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 이선민
 * @Since 2023. 2. 14.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 14.       이선민             생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Slf4j
@Controller
@RequestMapping("/student/assignment/**")
public class AssignmentStudentController {

		
	@Inject
	private AssignmentService service;

	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;
	
	
	/**
	 * assignment 속성 생성 메소드
	 * 
	 * 학생 과제
	 * 1) select 내가 수강중인 강의들의 과제 목록 출력(수강중인 강의, 과제명, 과제 제출일) 
	 * 2) 과제 제출  제출할 과제들 중 하나 선택 ASGN_ID 전송
	 * 3) 과제 상세 화면 출력 - select 
	 * 4) 제출 버튼 클릭시 과제 제출 - 과제목록 화면으로 redirect  
	 */
	
	@ModelAttribute("currLect")
	public CurrLectVO currectList() {
		return new CurrLectVO();
	}
	
	@ModelAttribute("assignment")
	public AssignmentVO assignmentList() {
		return new AssignmentVO();
	}
	
	@ModelAttribute("assignmentSubmit")
	public AssignmentSubmitVO assignmentSubmitList() {
		return new AssignmentSubmitVO();
	}
	
	
	/**
	 * 과제 목록 (selectList)
	 * @return
	 */
	@GetMapping
	public String assignmentListUI(	
		@RequestParam(value="curlectId",required=true) String curlectId
		, Model model
	) {

		//log.info("!!!!!!!!!!!!!!!!!! ");
		
		CurrLectVO currLectVO = service.retrieveAssignmentList(curlectId);
		model.addAttribute("currLectVO", currLectVO);
		
		
		return "student/assignment/assignment";
	}
	

	
	/**
	 * 과제상세보기(selectView)
	 * @return
	 */
	@RequestMapping("/assignmentView")
	public String assignmentView(
		@RequestParam(value="asgnId",required=true)	String asgnId
		, Model model
	) {
		//log.info("!!!!!!!!!!!!!!!!!! ");

		AssignmentVO assignmentVO = service.retrieveAssignment(asgnId);
		model.addAttribute("assignmentVO", assignmentVO);
		
		
		return "student/assignment/assignmentView";
	}
	
	//////////////////////////////////////////////////////////////////
	
	/**
	 * 과제 등록하기 insert
	 * @return
	 */
	@RequestMapping("/assignmentForm")
	public String assignmentForm(
		@RequestParam(value="curlectId",required=true) String curlectId
		, Model model
	) {
		
		CurrLectVO currLectVO = service.retrieveAssignmentList(curlectId);
		model.addAttribute("currLectVO", currLectVO);
		
		return "student/assignment/assignmentForm";
	}
	
	
	
	@PostMapping("/assignmentForm")
	public String assignmentInsert(
		@Validated(InsertGroup.class) @ModelAttribute("assignment")  AssignmentSubmitVO assignmentSubmitVO
		,Model model	
	) {
		String viewName = null;
		
		log.info("!!!!!!!!!!!!!!!!!!!!!!!insert {} ", assignmentSubmitVO);
		
		int rowcnt = service.createAssimentSubmit(assignmentSubmitVO);
		
		
		if(rowcnt > 0) {
			viewName = "redirect:/student/assignment/" + assignmentSubmitVO.getAsgnId();
		}else {
			model.addAttribute("message", "서버 오류");
			viewName = "student/assignment/assignmentForm";
		}
		
		
		return viewName;
		
		

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

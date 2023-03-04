package kr.or.ddit.prof.test.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.prof.test.service.TestProfService;
import kr.or.ddit.validate.InsertGroup;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.MyStudentVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;
import kr.or.ddit.vo.SearchVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.StudentVO;
import kr.or.ddit.vo.TestPasgVO;
import kr.or.ddit.vo.TestQueVO;
import kr.or.ddit.vo.TestVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/prof/test/**")
public class TestProfController {

	//service주입
	private final TestProfService service;
	
	
	/**
	 * 출제한 전체 시험 목록 조회
	 * @param currentPage
	 * @param searchVO
	 * @param profId
	 * @param model
	 * @return
	 */
	@GetMapping
	public String testListUI(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute SearchVO searchVO
		, @RequestParam String profId
		, Model model
	) {
		
		PagingVO<TestVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO); //검색
		//log.info("detailCondition {}" ,pagingVO.getDetailCondition());
		
		TestVO testVO = new TestVO();
		MyStudentVO myStudentVO = new MyStudentVO();
	
		myStudentVO.setProfId(profId);
		testVO.setMyStudentVO(myStudentVO);
		pagingVO.setDetailCondition(testVO);
		//log.info("testVO!!!!!!!!! {}",testVO);
		
		service.retrieveTestList(pagingVO, profId);
		model.addAttribute("pagingVO", pagingVO);

		
		return "prof/test/test";
	}
	
	
	
	////////////////////////////////////////////////////////////
	
	/**
	 * 시험등록페이지view - 시험정보 
	 * @return
	 */
	@GetMapping("/testForm")
	public String testFormUI(
		Model model
	) {
		
		TestVO testVO = new TestVO();
		service.retrieveTest(testVO);
		model.addAttribute("testVO" , testVO);
		
		List<LectureVO> lectureVO = service.retrieveLecture();
		model.addAttribute("lectureVO", lectureVO);
		
		return "prof/test/testForm";
	}
	
	
	
	@PostMapping("/testForm")
	public String testFormInsert(
		@Validated(InsertGroup.class) @ModelAttribute("test") TestVO testVO	
		, Model model
	) {
		
		
		log.info("testVO !!!!!!!!!!!!!{} ", testVO);
		
		String viewName = null;
		
		String rowcnt = service.createTotalTest(testVO);
		
		if(rowcnt == "OK") {
			viewName = "redirect:/prof/test?profId=" + testVO.getMyStudentVO().getProfId();
		}else {
			model.addAttribute("message", "서버오류");
			viewName = "prof/test/testForm";
		}
		
		return viewName;
	}
	
	///////////////////////////////////////////////////////////////
	
	
	
	
}

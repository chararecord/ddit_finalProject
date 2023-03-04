package kr.or.ddit.prof.test.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	@ResponseBody
	@PostMapping("/testForm")
	public Object testFormInsert(
		//@Validated(InsertGroup.class) @ModelAttribute("test") TestVO testVO	
		@RequestBody TestVO testVO
		, Model model
	) {
		
		log.info("testVO {}" , testVO);
		/*log.info("queNum insert컨트롤러 진입 {}" , testVO);
		for (String queNum : queNumList) {
			log.info("queNum !!!!! {}" , queNum);
		}*/
		
		
		//log.info("queNum insert컨트롤러 진입 {}" , testVO.getQueList().get(index));
		
		
		
		/*List<TestQueVO> testQueList = testVO.getQueList();
		List<TestQueVO> testQList2 = new ArrayList<TestQueVO>();
		
		for (TestQueVO testQue : testQueList) { //testQueList에 있는 내용들 testQue안에 넣기  
			String[] testNumArr = testQue.getTestNum().split(","); //
			String[] testQueArr = testQue.getTestQue().split(",");
		
			
			for (int i = 0; i < testQueArr.length; i++) {  // 일단 적은 걸로
				TestQueVO testQueVO2 = new TestQueVO();
				testQueVO2.setTestNum(testNumArr[i]);
				testQueVO2.setTestQue(testQueArr[i]);
				testQList2.add(testQueVO2);
				log.info("testQList2~ {}", testQList2);
			}
		}
		testVO.setQueList(testQList2);
		log.info("testVO~ {}", testVO);*/
		
	/*	TestQueVO testQueVO = new TestQueVO();
		List<TestPasgVO> testPasgList = testQueVO.getPasgList();
		*/
		

		
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

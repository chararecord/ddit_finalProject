package kr.or.ddit.student.test.controller;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.or.ddit.student.test.service.TestService;
import kr.or.ddit.validate.InsertGroup;
import kr.or.ddit.vo.MyStudentVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import kr.or.ddit.vo.StudentVO;
import kr.or.ddit.vo.TestAllowVO;
import kr.or.ddit.vo.TestAnsVO;
import kr.or.ddit.vo.TestVO;
import kr.or.ddit.vo.UsrVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 이선민
 * @Since 2023. 2. 2.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 1.       민경진             생성
 * 2023. 2. 2.       이선민             시험목록조회
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/student/test/**")
public class TestController {

	
	private final TestService service;
	
	
	/**
	 * test 속성 생성 메소드
	 * @return
	 */
	@ModelAttribute("test")
	public TestVO test() {
		return new TestVO();
	}
	
	
	/**
	 * 시험목록
	 * @param currentPage
	 * @param simpleConition
	 * @param model
	 * @return
	 */
	@GetMapping
	public String testList(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
			, @ModelAttribute SearchVO simpleConition 
			, @RequestParam String stdId
			, @RequestParam String semeId
			, Model model 
	) {
		//log.info("stuId !!!!!!! {} ", stdId);
		//log.info("semeId !!!!!!! {} ", semeId);
		
		//목록 조회 + 전체 게시글 갯수 조회
		PagingVO<TestVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage); 
		pagingVO.setSimpleCondition(simpleConition); //검색 
		
		TestVO testVO = new TestVO();
		MyStudentVO studentVO = new MyStudentVO();
		

		studentVO.setSemeId(semeId);
		studentVO.setStdId(stdId);
		
		
		testVO.setMyStudentVO(studentVO);
		pagingVO.setDetailCondition(testVO);
		
		
		//log.info("studentVO !!!!!!! {} ", studentVO); 
		//log.info("testVO !!!!!!! {} ", testVO); 
		//log.info("pagingVO !!!!!!! {} ", pagingVO); 
		
		service.retrieveTestList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
		//log.info("pagingVO2222 !!!!!!! {} ", pagingVO); 
		
		return "student/test/test";
	}
	
	
	///////////////////////////////////////////////////////////////////////////////////
	
	
	/**
	 * 시험응시 INSERT
	 * 시험목록 > 시험응시 컨트롤러로 이동 후 정보 저장하고 > 시험목록 > 시험상세보기 컨트롤러로 이동 
	 * @param test
	 * @param model
	 * @return
	 * 
	 *  // 시험명 클릭시 
	 *	// 시험명 클릭시 시험에 응시하시겠습니까? 팝업창 =>
	 *	// testAllow 컨트롤러로 이동 =>  insert쿼리문 실행 (넘어간 데이터들은 자동으로 allow컨트롤러에 등록됨)
	 *	// testAllow에서 testView컨트롤러로 redirect => testView로 데이터를 가지고 이동됨 
	 *	// testView컨트롤러로 이동할때 testAllow가 가지고있는 파라미터 같이 옮겨주기 
	 * 
	 * 
	 */
	@GetMapping("/testAllow")
	public String testAllowInsertUI(
		@RequestParam String testId
		, Model model
	) {
		return "student/test/testView";
	}
	
	/*
	 <input type="hidden" name="curlectId" value="달러{test.currLect.curlectId }" />
	<input type="hidden" name="testId" value="달러{test.testId}" />
	<input type="hidden" name="stdId" value="달러{param.stdId}" />
	<input type="hidden" name="semeId" value="달러{param.semeId}" />
	 */
	@PostMapping("/testAllow")
	public String testAllowInsert(
		@Validated(InsertGroup.class) @ModelAttribute("testAllow") TestAllowVO testAllow,
		String stdId, String semeId, Model model
	) {
		
		log.info("test insert controller!!!!!!! >>>>>>>>>>>>>>>>>> {}" , testAllow);
		log.info("stdId : " + stdId);
		log.info("semeId : " + semeId);
		
		String viewName = null;
		
		int rowcnt = service.createTestAllow(testAllow);
		log.info("rowcnt {}" , rowcnt);
		
		if(rowcnt > 0) {
			viewName = "redirect:/student/test/testView?testAllowId="+testAllow.getTestAllowId()+"&stdId="+stdId+"&semeId="+semeId; 
		}else {
			model.addAttribute("message", "서버오류");
			viewName = "student/test/testAllow";
		}
		return viewName;
	}

	
	
	/**
	 * 시험상세보기
	 * @param testId
	 * @param /student/test/testView?testAllowId="+testAllow.getTestAllowId()+"&stdId="+stdId+"&semeId="+semeId
	 * @return
	 */
	@RequestMapping("/testView")
	public String TestView(
	 @RequestParam(value="testAllowId",required=true) String testAllowId,
	 String stdId, String semeId
		, Model model
	) {
		log.info("stdId : " + stdId);
		log.info("semeId : " + semeId);
		//log.info("testAllowIdsdfsdf{}=======================", testAllowId);
		TestVO test = service.retrieveTest(testAllowId);
		Map<String,String> map = service.selectTest2(testAllowId);

		model.addAttribute("test", test);
		model.addAttribute("map", map);
		model.addAttribute("stdId",stdId);
		model.addAttribute("semeId",semeId);
		//forwarding => stduent>test>testView.jsp
		return "student/test/testView";
	}

	

	/**
	 * 학생 시험 제출 
	 * @param test
	 * @param errors
	 * @param model
	 * @return
	 *
	 * 
	 */
	@PostMapping("/testAns")
	public String testAnsInsert(
		@Validated(InsertGroup.class) @ModelAttribute("testAns") TestAllowVO testAns
		, @RequestParam String stdId
		, @RequestParam String semeId
		//, HttpSession session
		, Model model
	) {
		log.info("stdId : " + stdId);
		log.info("semeId : " + semeId);
		//log.info("stdId {}", stdId);
		/*StudentVO studentVO = new StudentVO();
		studentVO.setSemeId(semeId);
		log.info("studentVO !!!!!!!! {}", studentVO);*/
		//session.setAttribute("semeId", semeId);
		//log.info("session", session.getAttribute(semeId));

		
		//TestAllowVO(testAllowId=FK10529, curlectId=EA10005, testId=FG10002, testScore=null, 
		//testAnsList=[TestAnsVO(testAllowId=FK10529, testQueId=FH10002,FH10003, testAnsw=FI10005,iop)])

		//testAnsList=[TestAnsVO(testAllowId=FK10529, testQueId=FH10002,FH10003, testAnsw=FI10005,iop)]
		List<TestAnsVO> testAnsVOList = testAns.getTestAnsList();
		log.info("testAnsVOList!11111 {}" , testAnsVOList);
		
		
		//testAnsList2=[TestAnsVO(testAllowId=FK10529, testQueId=FH10002, testAnsw=FI10005),
		//						 (testAllowId=FK10529, testQueId=FH10003, testAnsw=iop)]
		List<TestAnsVO> testAnsVOList2 = new ArrayList<TestAnsVO>();
		
		
		for(TestAnsVO testAnsVO : testAnsVOList) { //testAnsVOList에 있는 내용들은 testAnsVO에 넣기 
			String[] testQueIdArr = testAnsVO.getTestQueId().split(",");	//[0]{"FH10002","FH10003"}
			String[] testAnswArr = testAnsVO.getTestAnsw().split(",");		//[1]{"FI10005","iop"}
			
			for(int i=0;i<testQueIdArr.length;i++) {
				TestAnsVO testAnsVO2 = new TestAnsVO();
				testAnsVO2.setTestAllowId(testAnsVO.getTestAllowId());	//FK10529
				testAnsVO2.setTestQueId(testQueIdArr[i]);	//FH10002
				testAnsVO2.setTestAnsw(testAnswArr[i]);		//FI10005
								
				testAnsVOList2.add(testAnsVO2);
			}
		}
		
		//testAns에다가 세팅해둔거 다시 넣어주기 
		testAns.setTestAnsList(testAnsVOList2);
		

		
		/*List<TestAnsVO> testAnsVO = new ArrayList<TestAnsVO>();
		test
rEach(taVO -> {
			taVO.setTestAllowId(testAllowId);
			//taVO.setTestPasgId(testPasgId);
			//taVO.setTestQueId(testQueId);
		});
		testAns.setTestAnsList(testAnsVO);
		*/
		//log.info("testAnsVO {}" , testAns);
		
		
		
		String viewName = null;
		int rowcnt = service.submitStudentAns(testAns);
		if(rowcnt > 0) {
				viewName = "redirect:/student/test?stdId="+stdId+"&semeId="+semeId ;
		} else {
			model.addAttribute("message", "서버 오류");
			viewName = "student/test/test";
		}
		return viewName;
	}

		
	
	
	
	
}

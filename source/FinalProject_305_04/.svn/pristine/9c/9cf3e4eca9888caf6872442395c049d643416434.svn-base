package kr.or.ddit.emp.graduationManage.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.context.annotation.Bean;
import org.springframework.http.MediaType;
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
import org.springframework.web.filter.HiddenHttpMethodFilter;

import kr.or.ddit.emp.graduationManage.service.GraduationManageService;
import kr.or.ddit.student.graduation.service.GraduationService;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.vo.GradFulVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import kr.or.ddit.vo.StudentVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
public class GraduationManageController {
	
	@Inject
	private GraduationService gradService;
	@Inject
	private GraduationManageService gradManageService;
	
	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;
	
	@Bean
	public HiddenHttpMethodFilter HiddenHttpMethodFilter() {
		return new HiddenHttpMethodFilter();
	}
	
	@ModelAttribute("student")
	public StudentVO studentInfo() {
		return new StudentVO();
	}
	
	@RequestMapping("/emp/graduationManage")
	public String studentListUI(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("simpleCondition") SearchVO searchVO
		, Model model
	) {
		PagingVO<StudentVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
//		studentService.retrieveStudentInfoList(pagingVO);
		gradManageService.retrieveStudentList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
		log.info("옵니까??{}", pagingVO);
		
		return "emp/graduationManage/graduationManage";
	}
	
	@GetMapping(value="/emp/graduationManage", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String studentListData(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("simpleCondition") SearchVO searchVO
		, Model model
	) {
		PagingVO<StudentVO> pagingVO = new PagingVO<>(15, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
//		studentService.retrieveStudentInfoList(pagingVO);
		gradManageService.retrieveStudentList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));
		
		return "jsonView";
	}
	
	@GetMapping("/emp/graduationManage/{stdId}")
	public String studentData(
		@PathVariable String stdId
		, Model model
	) {
//		log.info("옵니까??{}", stdId);
		StudentVO studentVO = gradService.retrieveStudent(stdId);
//		List<GradReqVO> gradReqList = gradService.retrieveGradReqList(studentVO.getMgradReqId());
		
		model.addAttribute("studentVO", studentVO);
//		boolean allAcquired = checkAllAcquired(studentVO.getGradFulList());
//		log.info("전부충족체크?{}", allAcquired);
//		model.addAttribute("allAcquired", allAcquired);
		
		return "jsonView";
	}
	
	@ResponseBody
	@PostMapping("/emp/graduationManage")
	public String studentDataUpdate(
		@RequestBody List<GradFulVO> gradFulList
		, Model model
	) {
		log.info("오나요??{}", gradFulList);
		
		String viewName = null;
		
		for(int i=0; i<gradFulList.size(); i++) {
			int rowcnt = gradManageService.modifyGradFul(gradFulList.get(i));
//			log.info("찍혀라찍혀라{}", rowcnt);
			
			if(rowcnt > 0) {
//				log.info("된다?");
				viewName = "redirect:/emp/graduationManage";
			} else {
				model.addAttribute("message", "서버 오류");
				viewName = "emp/graduationManage";
			}
		}
		return viewName;
	}
	
	@GetMapping("/emp/gradList")
	public void gradList(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("simpleCondition") SearchVO searchVO
		, Model model
	) {
		PagingVO<StudentVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		gradManageService.retrieveGradStudentList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
	}
	
	
	

}

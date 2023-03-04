package kr.or.ddit.student.graduation.controller;

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

import kr.or.ddit.emp.studentInfo.service.StudentInfoService;
import kr.or.ddit.student.graduation.service.GraduationService;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.vo.GradFulVO;
import kr.or.ddit.vo.GradReqVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import kr.or.ddit.vo.StudentVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/student")
public class GraduationManageController {
	
	@Inject
	private StudentInfoService studentService;
	@Inject
	private GraduationService gradService;
	
	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;
	
	@Bean
	public HiddenHttpMethodFilter HiddenHttpMethodFilter() {
		return new HiddenHttpMethodFilter();
	}
	
	@RequestMapping("/graduationManage")
	public String studentListUI(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("simpleCondition") SearchVO searchVO
		, Model model
	) {
		PagingVO<StudentVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		studentService.retrieveStudentInfoList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
//		log.info("옵니까??{}", pagingVO);
		
		return "student/graduation/graduationManage";
	}
	
	@GetMapping(value="graduationManage", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String studentListData(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("simpleCondition") SearchVO searchVO
		, Model model
	) {
		PagingVO<StudentVO> pagingVO = new PagingVO<>(20, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		studentService.retrieveStudentInfoList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));
		
		return "jsonView";
	}
	
	@GetMapping("/graduationManage/{stdId}")
	public String studentData(
		@PathVariable String stdId
		, Model model
	) {
		log.info("옵니까??{}", stdId);
		StudentVO studentVO = gradService.retrieveStudent(stdId);
		List<GradReqVO> gradReqList = gradService.retrieveGradReqList(studentVO.getMgradReqId());
		
//		log.info("왜 안와{}", studentVO);
		log.info("왜 안와{}", gradReqList);
		model.addAttribute("studentVO", studentVO);
		model.addAttribute("gradReqList", gradReqList);
		
		return "jsonView";
	}

}

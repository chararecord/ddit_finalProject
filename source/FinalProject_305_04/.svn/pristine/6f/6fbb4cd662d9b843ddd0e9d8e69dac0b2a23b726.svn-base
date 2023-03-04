package kr.or.ddit.student.graduation.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.student.graduation.service.GraduationService;
import kr.or.ddit.student.record.service.RecordService;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CurrLectVO;
import kr.or.ddit.vo.GradFulVO;
import kr.or.ddit.vo.GradReqVO;
import kr.or.ddit.vo.MGradReqVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.StudentVO;
import kr.or.ddit.vo.UsrVO;
import kr.or.ddit.vo.UsrVOWrapper;
import lombok.extern.slf4j.Slf4j;

/**
 * 졸업요건 컨트롤러
 * @author 민경진
 *
 */
@Slf4j
@Controller
public class GraduationController {
	
	@Inject
	private GraduationService service;
//	@Inject
//	private RecordService recordService;
	
	
	
	@GetMapping("/student/graduation")
	public String graduation(
		@AuthenticationPrincipal UsrVOWrapper principal
		, Model model
	) {
		UsrVO realUser = principal.getRealUser();
//		log.info("누구야{}", realUser);
		
		String userRole = realUser.getUserRole();
		if(userRole.equals("ROLE_STD")) {
			String stdId = realUser.getUserId();
			StudentVO studentVO = service.retrieveStudent(stdId);
			model.addAttribute("studentVO", studentVO);
			log.info("찍어봐요요{}", studentVO);
			
			List<GradReqVO> gradReqList = service.retrieveGradReqList(studentVO.getMgradReqId());
			log.info("찍어보자고요{}", gradReqList);
			if(gradReqList == null) {
				gradReqList.add(new GradReqVO());
			}
			model.addAttribute("gradReqList", gradReqList);
			
//			List<GradFulVO> gradFulList = service.retrieveGradFulList(stdId);
			
//			for(int i=5; i<gradFulList.size(); i++) {
//				log.info("찍찍{}",gradFulList.get(5).getGradReqVO().getReqItem());
//				log.info("찍찍찍{}",gradFulList.get(5).getGradReqVO().getReqStand());
//			}
			
//			model.addAttribute("gradFulList", gradFulList);
			
//			List<Map<String, String>> gradFulList = service.retrieveGradFulList(stdId);
//			log.info("찍어봅시다{}", gradFulList);
//			model.addAttribute("gradFulList", gradFulList);
		}
		
		
//		List<CurrLectVO> currLectList = service.retrieveCurrLectList(stdId);
//		model.addAttribute("currLectList", currLectList);
		
//		Map<String, Integer> nowCredit = service.getNowCredit(stdId);
//		model.addAttribute("nowCredit", nowCredit);
		
		return "student/graduation/graduation";
	}
	
	
	
	
//	@GetMapping("/student/graduation/list")
//	public String graduationList(
//		Model model
//	) {
//		List<MGradReqVO> mGradReqList = service.retrieveMGradReqList();
//		model.addAttribute("mGradReqList", mGradReqList);
//		
//		List<CollVO> collegeList = recordService.retrieveCollegeList();
//		model.addAttribute("collegeList", collegeList);
//		
//		List<SemesterVO> semesterList = service.retrieveSemesterList();
//		model.addAttribute("semesterList", semesterList);
//		
//		return "student/graduation/graduationList";
//	}
	
//	@ResponseBody
//	@GetMapping("/student/graduation/list/{mGradReqId}")
//	public MGradReqVO majorGradDetail(
//		@PathVariable String mGradReqId
//	) {
////		log.info("=====찍어보자{}", mGradReqId);
//		MGradReqVO majorReqVO = service.retrieveMGradReq(mGradReqId);
//		return majorReqVO;
//	}
	
//	@ResponseBody
//	@PostMapping("/student/graduation/list/selectMajorList")
//	public List<MajorVO> selectMajorList(
//		@RequestBody CollVO collVO
//	) {
//		List<MajorVO> data = recordService.retrieveMajorList(collVO);
//		return data;
//	}
	
	
//	@ResponseBody
//	@PostMapping("/student/graduation/list")
//	public String insertMajorGrad(
//		@RequestBody MGradReqVO mGradReqVO
//	) {
//		log.info("==찍어봐{}", mGradReqVO);
//		int rowcnt = service.createMGradReq(mGradReqVO);
//		// 학과별 졸업요건 등록 성공 -> 졸업요건항목과 기준 등록
//		if(rowcnt > 0) {
//			return "성공";
//		} else {
//			return "실패";
//		}
//	}
	
	
	
	
	
}

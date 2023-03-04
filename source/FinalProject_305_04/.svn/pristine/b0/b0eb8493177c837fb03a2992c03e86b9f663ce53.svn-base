package kr.or.ddit.student.record.contoller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.student.record.service.RecordService;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.RecordVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.StudentVO;
import kr.or.ddit.vo.UsrVO;
import kr.or.ddit.vo.UsrVOWrapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * 학적조회 컨트롤러
 * @author 민경진
 *
 */
/**
 * @author PC-19
 * @Since 2023. 2. 16.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 16.       장은호       		메소드 추가, 단과대학 조회 추가
 * 2023. 2. 27.       장은호                 realUser로 수정
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@RequiredArgsConstructor
@Controller
public class RecordController {
	
	private final RecordService service;
	
	
	/**
	 * 해당 학생의 모든 정보(개인정보, 학적) 목록 출력 메소드
	 */
//	@GetMapping("/student/record")
//	public String recordList(
//		@RequestParam(value="stdId", required=true) int stdId
//		, Model model
//	) {
//		StudentVO savedData = service.retrieveRecordList(stdId);
//		if(savedData==null) {
//			return "error/500";
//		}
//		
//		model.addAttribute("studentInfo", savedData);
//
//		return "student/record/record";
//	}
	
	
	
	@GetMapping("/student/record")
	public String recordInsert(
//		@RequestParam(value="stdId", required=true) int stdId
//		@PathVariable String stdId
		@AuthenticationPrincipal UsrVOWrapper principal
		, Model model
	) {
		List<Map<String, String>> recNmList = service.retrieveRecNmList();
		
		log.info("학적구분리스트{}", recNmList);
//		log.info("======{}", recNmList.get(0).get("COMM_DESC"));
		model.addAttribute("recNmList", recNmList);
		
//		Map<String, String> recNmMap = new HashMap<>();
//		for (int i = 0; i < recNmList.size(); i++) {
////			log.info("찍어보자{}", recNmList.get(i).get("COMM_DESC"));
//			recNmMap.put(recNmList.get(i).get("COMM_ID"), recNmList.get(i).get("COMM_DESC"));
//			log.info("찍어보자{}", recNmMap);
//		}
//		model.addAttribute("recNmMap", recNmMap);
		
		UsrVO realUser = principal.getRealUser();
		log.info("누구지{}", realUser);
		
		String userRole = realUser.getUserRole();
		if(userRole.equals("ROLE_STD")) {
			String stdId = realUser.getUserId();
			StudentVO studentInfo = service.retrieveRecordList(stdId);
			model.addAttribute("studentInfo", studentInfo);
			
			List<CollVO> collegeList = service.retrieveCollegeList();
			model.addAttribute("collegeList", collegeList);
			
			SemesterVO semesterVO = service.retrieveSemester();
			model.addAttribute("semesterVO", semesterVO);
			
			SemesterVO nextSemesterVO = service.retrieveNextSemester(semesterVO);
			model.addAttribute("nextSemesterVO", nextSemesterVO);
			
			return "student/record/record";
		}
		return null;
	}
	
	
	@ResponseBody
	@PostMapping(value="/student/record/{stdId}", produces="application/json;charset=utf-8")
	public Map<String, Object> recordInsertProcess(
		@PathVariable String stdId
		, @RequestBody RecordVO record
		, Model model
	) {
		log.info("==찍어보자 {}", record.toString());
		
		int rowcnt = service.createRecord(record);
		if (rowcnt > 0) {
			StudentVO savedInfo = service.retrieveRecordList(record.getStdId());
			Map<String, Object> studentInfo = new HashMap<>();
			studentInfo.put("savedInfo", savedInfo);
			return studentInfo;
		} else {
			model.addAttribute("message", "존재하지 않는 학생");
			return null;
		}
	}
	
	/**
	 * 단과대학별 학과 목록 
	 */
	@ResponseBody
	@PostMapping("/student/selectMajorList")
	public List<MajorVO> selectMajorList(
		@RequestBody CollVO collVO
	) {
		List<MajorVO> data = service.retrieveMajorList(collVO);
		return data;
	}
	
	
	
	
}

package kr.or.ddit.student.graduation.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.student.graduation.dao.GraduationDAO;
import kr.or.ddit.vo.CurrLectVO;
import kr.or.ddit.vo.GradFulVO;
import kr.or.ddit.vo.GradReqVO;
import kr.or.ddit.vo.MGradReqVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.StudentVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 장은호
 * @Since 2023. 2. 16.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 16.       장은호              생성
 * 2023. 2. 23.       장은호               추가(retrieveGradFulList, retrieveCurrLectList
 * 									retrieveTotalCredit,
 * 									retrieveMajorReqCredit, retrieveMajorOptCredit,
 * 									retrieveGEReqCredit, retrieveGEOptCredit,
 * 									getNowCredit)
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Service
public class GraduationServiceImpl implements GraduationService {

	@Inject
	private GraduationDAO gradDAO;
	
	@Override
	public StudentVO retrieveStudent(String stdId) {
		StudentVO studentVO = gradDAO.selectStudent(stdId);
		return studentVO;
	}

	@Override
	public List<GradReqVO> retrieveGradReqList(String mGradReqId) {
		List<GradReqVO> gradReqList = gradDAO.selectGradReqList(mGradReqId);
		return gradReqList;
	}
	
	
//	@Override
//	public List<GradReqVO> retrieveMGradReqList(String stdId) {
//		List<GradReqVO> gradReqList = gradDAO.selectMGradReqList(stdId);
//		return gradReqList;
//	}

//	@Override
//	public List<GradFulVO> retrieveGradFulList(String stdId) {
//		List<GradFulVO> gradFulList = gradDAO.selectGradFulList(stdId);
//		return gradFulList;
//	}

//	@Override
//	public List<Map<String, String>> retrieveGradFulList(String stdId) {
//		List<Map<String, String>> gradFulList = gradDAO.selectGradFulList(stdId);
//		return gradFulList;
//	}
	
	
	
//	@Override
//	public List<MGradReqVO> retrieveMGradReqList() {
//		return gradDAO.selectMGradReqList();
//	}


//	@Override
//	public List<SemesterVO> retrieveSemesterList() {
//		List<SemesterVO> semesterList = gradDAO.selectSemester();
//		return semesterList;
//	}

//	@Override
//	public int createMGradReq(MGradReqVO mGradReqVO) {
//		int rowcnt = gradDAO.insertMGradReq(mGradReqVO);
//		return rowcnt;
//	}

//	@Override
//	public int createGradReq(List<GradReqVO> gradReqVO) {
//		int rowcnt = gradDAO.insertGradReq(gradReqVO);
//		return rowcnt;
//	}

	//////////////////////////////////////////////////////////////
	

//	@Override
//	public List<CurrLectVO> retrieveCurrLectList(String stdId) {
//		List<CurrLectVO> currLectList = gradDAO.selectCurrLectList(stdId);
//		log.info("지금까지 수강한 강의 목록{}", currLectList.get(0));
//		Stream<CurrLectVO> stream = currLectList.stream();
//		stream.forEach(lecture -> log.info("학점{}", lecture.getLectureVO().getCredit()));
//		stream.forEach(lecture -> lecture.getLectureVO().getCredit());
		
//		return currLectList;
//	}

	
	


}

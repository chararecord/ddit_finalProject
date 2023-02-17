package kr.or.ddit.student.graduation.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.student.graduation.dao.GraduationDAO;
import kr.or.ddit.vo.GradReqVO;
import kr.or.ddit.vo.MGradReqVO;
import kr.or.ddit.vo.SemesterVO;

/**
 * @author 장은호
 * @Since 2023. 2. 16.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 16.       장은호              생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
public class GraduationServiceImpl implements GraduationService {

	@Inject
	private GraduationDAO gradDAO;
	
	@Override
	public List<MGradReqVO> retrieveMGradReqList() {
		return gradDAO.selectMGradReqList();
	}

	@Override
	public MGradReqVO retrieveMGradReq(String mGradReqId) {
		MGradReqVO mGradReqVO = gradDAO.selectMGradReq(mGradReqId);
		return mGradReqVO;
	}

	@Override
	public List<SemesterVO> retrieveSemesterList() {
		List<SemesterVO> semesterList = gradDAO.selectSemester();
		return semesterList;
	}

	@Override
	public int createMGradReq(MGradReqVO mGradReqVO) {
		int rowcnt = gradDAO.insertMGradReq(mGradReqVO);
		return rowcnt;
	}

	@Override
	public int createGradReq(List<GradReqVO> gradReqVO) {
		int rowcnt = gradDAO.insertGradReq(gradReqVO);
		return rowcnt;
	}


}

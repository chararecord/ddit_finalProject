package kr.or.ddit.student.graduation.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.CurrLectVO;
import kr.or.ddit.vo.GradFulVO;
import kr.or.ddit.vo.GradReqVO;
import kr.or.ddit.vo.MGradReqVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.StudentVO;

/**
 * @author 장은호
 * @Since 2023. 2. 16.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 16.       장은호        		생성
 * 2023. 2. 23.       장은호                 selectGradFulList, selectCurrLectList,
 *                                  selectTotalCredit, 
 *                                  selectMajorReqCredit, selectMajorOptCredit, 
 *                                  selectGEReqCredit, selectGEOptCredit 추가
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface GraduationDAO {
	
	/**
	 * 해당 학생의 정보 조회
	 * @param stdId
	 * @return 학생 객체
	 */
	public StudentVO selectStudent(String stdId);
	
	
	/**
	 * 해당 졸업요건 기준 조회
	 * @param mGradReqId
	 * @return 학과별졸업요건 객체
	 */
	public List<GradReqVO> selectGradReqList(String mGradReqId);
	
	/**
	 * 해당 학생이 충족해야 하는 졸업요건기준 중 학점 조회
	 * @param stdId
	 * @return MGradReq 객체
	 */
//	public List<GradReqVO> selectMGradReqList(String stdId);
	
//	public List<GradFulVO> selectGradFulList(String stdId);
	
	// 전체 졸업요건 조회
//	public List<MGradReqVO> selectMGradReqList();
	
	
	// 전체 학번 조회
//	public List<SemesterVO> selectSemester();
	
	// 학과별 졸업요건 등록
//	public int insertMGradReq(MGradReqVO mGradReqVo);

	// 졸업요건 등록
//	public int insertGradReq(List<GradReqVO> gradReqVO);
	
	
	
	
	
	
}

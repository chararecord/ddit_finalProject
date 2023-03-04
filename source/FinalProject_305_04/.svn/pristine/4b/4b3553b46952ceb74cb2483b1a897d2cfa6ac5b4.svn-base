package kr.or.ddit.prof.assignment.service;

import kr.or.ddit.vo.AssignmentSubmitVO;
import kr.or.ddit.vo.AssignmentVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.StudentVO;

/**
 * 
 * @author 이선민
 * @Since 2023. 2. 20.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 20.       PC-20        생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
public interface AssignmentProfService {

	
	/**
	 * 과제 목록 조회 
	 * @param pagingVO
	 */
	public void retrieveAssignmentProfList(PagingVO<AssignmentVO> pagingVO, String lectId);
	
	
	/**
	 * 교수 과제 조회
	 * @return
	 */
	public AssignmentVO retrieveAssignment(String asgnId);
	
	
	/**
	 * 과제 등록
	 * @param asiAssignmentVO
	 * @return
	 */
	public int createAssignment(AssignmentVO assignmentVO);
	
	
	/**
	 * 출제된 과제 수정 
	 * @param  assignmentVO
	 */
	public int modifyAssignment(AssignmentVO assignmentVO);
	
	
	/**
	 * 출제된 과제 삭제 
	 * @param asgnId
	 * @return
	 */
	public int removeAssignment(String asgnId);
	
	
	
	

	/**
	 * 제출한 학생 리스트 
	 * @param pagingVO
	 * @param stuId
	 */
	public void retrieveSubmitStudentList(PagingVO<AssignmentVO> pagingVO, String asgnId);
	
	
	/**
	 * 제출한 학생 단건 조회
	 * @param asgnSubmId
	 * @return
	 */
	public AssignmentVO retrieveSubmitStudent(String asgnSubmId);
	
	
	
	/**
	 * 교수 점수 등록  - update
	 * @param assignmentSubmitVO
	 * @return
	 */
	public int modeifyAssignmentScore(AssignmentSubmitVO assignmentSubmitVO);
	
	
	
	
}

package kr.or.ddit.prof.assignment.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

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

@Mapper
public interface AssignmentProfDAO {

	
	/**
	 * 게시글 개수 조회
	 * @param pagingVO
	 * @return
	 */
	public int selectTotalRecord(String lectId);
	
	
	/**
	 * 교수 과제 목록 조회
	 * @param pagingVO
	 * @return
	 */
	public List<AssignmentVO> selectProfAssignmentList(PagingVO<AssignmentVO> pagingVO);
	
	
	/**
	 * 교수 과제 조회 
	 * @param pagingVO
	 * @return
	 */
	public AssignmentVO selectProfAssignmentView(String asgnId);
	
	
	
	/**
	 * 과제 등록
	 * @param asiAssignmentVO
	 * @return
	 */
	public int insertProfAssignment(AssignmentVO asiAssignmentVO); 
	
	
	
	/**
	 * 출제된 과제 수정 
	 * @param  assignmentVO
	 */
	public int updateProfAssignmentView(AssignmentVO assignmentVO);
	
	
	
	
	/**
	 * 출제된 과제 삭제 
	 * @param asgnId
	 * @return
	 */
	public int deleteProfAssignment(String asgnId);

	
	
	///////////////////////////////////////////////////////////

	
	
	/**
	 * 학생제출목록 개수 조회
	 * @param asgnId
	 * @return
	 */
	public int selectSubmitTotalRecord(String asgnId);
	
	
	/**
	 * 제출한 학생 리스트 
	 * @param pagingVO
	 * @return
	 */
	public List<AssignmentVO> selectSubmitStudentList(PagingVO<AssignmentVO> pagingVO); 
	
	
	/**
	 * 제출한 학생 단건 조회
	 * @param asgnSubmId
	 * @return
	 */
	public AssignmentVO selectSubmitStudentView(@Param("asgnSubmId") String asgnSubmId);
	
	
	
	/////////////////////////////////////////////////////////////
	
	
	
	/**
	 * 교수 점수 등록  - update
	 * @param assignmentSubmitVO
	 * @return
	 */
	public int updateAssignScore(AssignmentSubmitVO assignmentSubmitVO);
	
	
	
}

package kr.or.ddit.emp.graduationManage.service;

import kr.or.ddit.vo.GradFulVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.StudentVO;

public interface GraduationManageService {
	
	/**
	 * 졸업하지 않은 학생 목록 조회
	 * @param pagingVO
	 * @return
	 */
	public void retrieveStudentList(PagingVO<StudentVO> pagingVO);
	
	/**
	 * 졸업요건 수정
	 * @param gradFulVO
	 * @return
	 */
	public int modifyGradFul(GradFulVO gradFulVO); 
	
	/**
	 * 졸업예정자 전체 목록 조회
	 * @param pagingVO
	 */
	public void retrieveGradStudentList(PagingVO<StudentVO> pagingVO);
}
	
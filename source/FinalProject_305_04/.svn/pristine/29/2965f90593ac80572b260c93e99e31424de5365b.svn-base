package kr.or.ddit.emp.graduationManage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.GradFulVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.StudentVO;

/**
 * @author 장은호
 * @Since 2023. 2. 24.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 24.       장은호        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface GraduationManageDAO {
	
	/**
	 * 졸업하지 않은 전체 학생 학생수 조회
	 * @param pagingVO
	 * @return
	 */
	public int selectTotalRecord(PagingVO<StudentVO> pagingVO);
	
	/**
	 * 졸업하지 않은 전체 학생 목록 조회
	 * @param pagingVO
	 * @return
	 */
	public List<StudentVO> selectStudentList(PagingVO<StudentVO> pagingVO);
	
	/**
	 * 졸업요건 수정
	 * @param gradFulVO
	 * @return
	 */
	public int updateGradFul(GradFulVO gradFulVO);
	
	//////////////////////////////////////////////////////////////////////////////////
	
	/**
	 * 졸업예정자 학생수 조회
	 * @param pagingVO
	 * @return
	 */
	public int selectGradTotalRecord(PagingVO<StudentVO> pagingVO);
	
	/**
	 * 졸업예정자 전체 조회
	 * @param pagingVO
	 * @return
	 */
	public List<StudentVO> selectGradStudentList(PagingVO<StudentVO> pagingVO);
	
}

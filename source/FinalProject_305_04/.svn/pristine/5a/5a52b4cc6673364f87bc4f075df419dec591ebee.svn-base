package kr.or.ddit.emp.empInfo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.BuildingVO;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.DeptVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.LaboVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;
import kr.or.ddit.vo.RecordVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.StudentVO;

/**
 * @author 송지은
 * @Since 2023. 2. 2.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                      수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 2.       송지은        	    생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface EmpInfoDao {

	/**
	 * 게시글 개수 조회
	 * @param pagingVO
	 * @return
	 */
	public int selectTotalRecord(PagingVO<EmpVO> pagingVO);
	
	/**
	 * 목록
	 * @param pagingVO
	 * @return
	 */
	public List<EmpVO> selectEmpInfoList(PagingVO<EmpVO> pagingVO);
	
	
	/**
	 * 상세 조회
	 * @param empInfo
	 * @return
	 */
	public EmpVO selectEmpInfo(String empId);
	
	
	/**
	 * 등록하기
	 * @param empId
	 * @return
	 */
	public int insertUserEmpInfo(EmpVO empId);
	public int insertEmpEmpInfo(EmpVO empId);
	
	
	
	/**
	 * 수정하기
	 * @param empId
	 * @return
	 */
	public int updateEmpEmpInfo(EmpVO empId);
	public int updateUserEmpInfo(EmpVO empId);
	
	
	
	/**
	 * 빌딩 셀렉트박스
	 * @param commVO
	 * @return
	 */
	public List<CommVO> selectBuilding();
	/**
	 * 사무실 셀렉트박스
	 * @param buildingVO
	 * @return
	 */
	public List<BuildingVO> selectBuildingNum(CommVO commVO);
	
	
	/**
	 * 직책 셀렉트박스로 가져오기
	 * @return
	 */
	public List<CommVO> selectPosList();
	
	
	/**
	 * 부서 셀렉트박스로 가져오기
	 * @return
	 */
	public List<DeptVO> selectDeptList();
	
	
}





















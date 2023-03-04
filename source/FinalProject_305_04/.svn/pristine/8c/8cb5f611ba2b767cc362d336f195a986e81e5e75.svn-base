package kr.or.ddit.emp.empInfo.service;

import java.util.List;

import kr.or.ddit.vo.BuildingVO;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.DeptVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.LaboVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;

public interface EmpInfoService {

	/**
	 * 게시글 목록 조회
	 * @param pagingVO
	 */
	public void retrieveEmpInfoList(PagingVO<EmpVO> pagingVO);
	

	/**
	 * 상세조회
	 * @param empId
	 * @return
	 */
	public EmpVO retrieveEmpInfo(int empId);
	
	
	
	/**
	 * 등록하기
	 * @param empId
	 * @return
	 */
	public String createEmpTotalEmpInfo(EmpVO empId);
	
	
	/**
	 * 수정하기
	 * @param empId
	 * @return
	 */
	public String updateEmpTotalEmpInfo(EmpVO empId);
	
	
	
	/**
	 * 빌딩 셀렉트박스
	 * @return
	 */
	public List<CommVO> selectBuilding();
	/**
	 * 연구실 셀렉트박스
	 * @param commVO
	 * @return
	 */
	public List<BuildingVO> selectBuildingNum(CommVO commVO);
	
	
	/**
	 * 직책 셀렉트박스
	 * @return
	 */
	public List<CommVO> selectPosList();
	
	/**
	 * 부서 셀렉트박스
	 * @return
	 */
	public List<DeptVO> selectDeptList();
}
















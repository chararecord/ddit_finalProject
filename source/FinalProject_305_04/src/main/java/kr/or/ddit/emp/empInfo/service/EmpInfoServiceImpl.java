package kr.or.ddit.emp.empInfo.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.emp.empInfo.dao.EmpInfoDao;
import kr.or.ddit.emp.profInfo.dao.ProfInfoDao;
import kr.or.ddit.vo.BuildingVO;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.DeptVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.LaboVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;

@Service
public class EmpInfoServiceImpl implements EmpInfoService {

	@Inject
	private EmpInfoDao empInfoDao;

	//목록 만들기
	@Override
	public void retrieveEmpInfoList(PagingVO<EmpVO> pagingVO) {
		int totalRecord = empInfoDao.selectTotalRecord(pagingVO);
		pagingVO.setTotalRecord(empInfoDao.selectTotalRecord(pagingVO));
		List<EmpVO> profInfoList = empInfoDao.selectEmpInfoList(pagingVO);
		pagingVO.setDataList(empInfoDao.selectEmpInfoList(pagingVO));
	}

	
	//상세조회
	@Override
	public EmpVO retrieveEmpInfo(int empId) {
		EmpVO empInfo = empInfoDao.selectEmpInfo(empId);
		if(empInfo == null)
			throw new RuntimeException(String.format("%s 는 없는 상품", empId));
		return empInfo;
	}

	
	//등록하기
	@Override
	@Transactional
	public String createEmpTotalEmpInfo(EmpVO empId) {
		int rowcnt = empInfoDao.insertUserEmpInfo(empId);
		rowcnt += empInfoDao.insertEmpEmpInfo(empId);
		return "OK";
	}

	
	//수정하기
	@Override
	@Transactional
	public String updateEmpTotalEmpInfo(EmpVO empId) {
		int rowcnt1 = empInfoDao.updateEmpEmpInfo(empId);
		rowcnt1 += empInfoDao.updateUserEmpInfo(empId);
		return "OK";
	}
	
	
	
	
	/**
	 * 빌딩 셀렉트박스
	 */
	@Override
	public List<CommVO> selectBuilding() {
		return empInfoDao.selectBuilding();
	}

	/**
	 * 연구실 셀렉트박스
	 */
	@Override
	public List<BuildingVO> selectBuildingNum(CommVO commVO) {
		return empInfoDao.selectBuildingNum(commVO);
	}	
	
	
	/**
	 * 직책 셀렉트박스 띄우기
	 */
	@Override
	public List<CommVO> selectPosList() {
		return empInfoDao.selectPosList();
	}
	
	/**
	 * 부서 셀렉트박스 띄우기
	 */
	@Override
	public List<DeptVO> selectDeptList() {
		return empInfoDao.selectDeptList();
	}



	
	

}























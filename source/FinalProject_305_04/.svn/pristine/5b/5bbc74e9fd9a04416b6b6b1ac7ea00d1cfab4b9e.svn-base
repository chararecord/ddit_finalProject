package kr.or.ddit.emp.profInfo.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.emp.profInfo.dao.ProfInfoDao;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.LaboVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;

@Service
public class ProfInfoServiceImpl implements ProfInfoService {

	@Inject
	private ProfInfoDao profInfoDao;

	//목록 만들기
	@Override
	public void retrieveProfInfoList(PagingVO<ProfessorVO> pagingVO) {
		int totalRecord = profInfoDao.selectTotalRecord(pagingVO);
		pagingVO.setTotalRecord(profInfoDao.selectTotalRecord(pagingVO));
		List<ProfessorVO> profInfoList = profInfoDao.selectProfInfoList(pagingVO);
		pagingVO.setDataList(profInfoDao.selectProfInfoList(pagingVO));
	}

	//상세조회
	@Override
	public ProfessorVO retrieveProfInfo(String profId) {
		ProfessorVO profInfo = profInfoDao.selectProfInfo(profId);
		if(profInfo == null)
			throw new RuntimeException(String.format("%s 는 없는 상품", profId));
		return profInfo;
	}

	
	
	//등록하기
	@Override
	@Transactional
	public String createProfTotalProfInfo(ProfessorVO profId) {
		int rowcnt = profInfoDao.insertUserProfInfo(profId);
		rowcnt += profInfoDao.insertProfProfInfo(profId);
		return "OK";
	}

	
	//수정하기
	@Override
	@Transactional
	public String updateProfTotalProfInfo(ProfessorVO profId) {
		int rowcnt1 = profInfoDao.updateProfProfInfo(profId);
		rowcnt1 += profInfoDao.updateUserProfInfo(profId);
		return "OK";
	}
	
	
	
	
	/**
	 * 빌딩 셀렉트박스
	 */
	@Override
	public List<CommVO> selectBuilding() {
		return profInfoDao.selectBuilding();
	}

	/**
	 * 연구실 셀렉트박스
	 */
	@Override
	public List<LaboVO> selectBuildingNum(CommVO commVO) {
		return profInfoDao.selectBuildingNum(commVO);
	}

	
	
	/**
	 * 단과대학 셀렉트박스로 띄우기
	 */
	@Override
	public List<CollVO> retrieveCollList() {
		return profInfoDao.selectCollList();
	}

	/**
	 * 학과 셀렉트박스로 띄우기 (단과먼저 띄우고 선별됨)
	 */
	@Override
	public List<MajorVO> selectMajorList(CollVO collVO) {
		return profInfoDao.selectMajorList(collVO);
	}

	
	/**
	 * 직책 셀렉트박스 띄우기
	 */
	@Override
	public List<CommVO> selectPosList() {
		return profInfoDao.selectPosList();
	}
	
	
	
	
	
	
	
	
	
	

}

package kr.or.ddit.emp.profInfo.service;

import java.util.List;

import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.LaboVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;

public interface ProfInfoService {

	/**
	 * 게시글 목록 조회
	 * @param pagingVO
	 */
	public void retrieveProfInfoList(PagingVO<ProfessorVO> pagingVO);
	
	/**
	 * 상세조회
	 * @param profId
	 * @return
	 */
	public ProfessorVO retrieveProfInfo(int profId);
	
	
	/**
	 * 등록하기
	 * @param profId
	 * @return
	 */
	public String createProfTotalProfInfo(ProfessorVO profId);
	
	
	/**
	 * 수정하기
	 * @param profId
	 * @return
	 */
	public String updateProfTotalProfInfo(ProfessorVO profId);
	
	
	
	
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
	public List<LaboVO> selectBuildingNum(CommVO commVO);
	
	
	
	/**
	 * 단과대학 셀렉트박스로 가져오기
	 * @return
	 */
	public List<CollVO> retrieveCollList();
	
	/**
	 * 학과 셀렉트박스
	 * @param collVO
	 * @return
	 */
	public List<MajorVO> selectMajorList(CollVO collVO);
	
	/**
	 * 직책 셀렉트박스
	 * @return
	 */
	public List<CommVO> selectPosList();
	
}
















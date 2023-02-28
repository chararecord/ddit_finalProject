package kr.or.ddit.emp.profInfo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.BuildingVO;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.LaboVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;

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
public interface ProfInfoDao {
	
	/**
	 * 게시글 개수 조회
	 * @param pagingVO
	 * @return
	 */
	public int selectTotalRecord(PagingVO<ProfessorVO> pagingVO);
	
	/**
	 * 목록
	 * @param pagingVO
	 * @return
	 */
	public List<ProfessorVO> selectProfInfoList(PagingVO<ProfessorVO> pagingVO);
	
	/**
	 * 상세조회
	 * @param profId
	 * @return
	 */
	public ProfessorVO selectProfInfo(String profId);
	
	
	
	/**
	 * 등록하기 (user, prof)
	 * @param profId
	 * @return
	 */
	public int insertUserProfInfo(ProfessorVO profId);
	public int insertProfProfInfo(ProfessorVO profId);
	
	
	
	/**
	 * 수정하기
	 * @param profId
	 * @return
	 */
	public int updateProfProfInfo(ProfessorVO profId);
	public int updateUserProfInfo(ProfessorVO profId);
	
	
	
	/**
	 * 빌딩 셀렉트박스
	 * @param commVO
	 * @return
	 */
	public List<CommVO> selectBuilding();
	
	
	/**
	 * 연구실 셀렉트박스
	 * @param buildingVO
	 * @return
	 */
	public List<LaboVO> selectBuildingNum(CommVO commVO);
	
	
	
	
	
	
	/**
	 * 단과 목록 셀렉트박스로 가져오기
	 * @return
	 */
	public List<CollVO> selectCollList();
	
	/**
	 * 단과 선택을 통한 학과 목록 셀렉트박스로 가져오기
	 * @param collVO
	 * @return
	 */
	public List<MajorVO> selectMajorList(CollVO collVO);
	
	
	
	/**
	 * 직책 셀렉트박스로 가져오기
	 * @return
	 */
	public List<CommVO> selectPosList();
	
	
	
	
}





















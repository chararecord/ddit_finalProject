package kr.or.ddit.campus.facility.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.BuildingVO;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.FaciLentVO;
import kr.or.ddit.vo.FacilityVO;
import kr.or.ddit.vo.LaboVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;

/**
 * @author 송지은
 * @Since 2023. 3. 1.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                      수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 3. 1.       송지은        	    생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface FacilityDao {
	
	
	/**
	 * 시설 조회
	 * @param faciId
	 * @return
	 */
	public List<FacilityVO> selectFaciList();
	
	
	/**
	 * 시설 정보 조회
	 * @param facilityVO
	 * @return
	 */
	public FacilityVO selectFaciInfo(FacilityVO facilityVO);
	
	
	/**
	 * 시간표 목록 조회
	 * @param faciLeaseid
	 * @return
	 */
	public List<Map<String,Object>> selectFaciTableList(String faciId);
	
	
	/**
	 * 예약 등록하기
	 * @param faciLeaseid
	 * @return
	 */
	public int insertFacilityRes(FaciLentVO faciLeaseid);
	
}





















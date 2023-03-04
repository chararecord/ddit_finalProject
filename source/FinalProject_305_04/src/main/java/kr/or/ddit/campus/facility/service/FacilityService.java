package kr.or.ddit.campus.facility.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.FaciLentVO;
import kr.or.ddit.vo.FacilityVO;

public interface FacilityService {

	
	/**
	 * 시설 목록 출력
	 * @param faciId
	 */
	public List<FacilityVO> retrieveFacilityList();
	
	
	/**
	 * 시설 정보 출력
	 * @param facilityVO
	 * @return
	 */
	public FacilityVO selectFaciInfo(FacilityVO facilityVO);
	
	
	/**
	 * 시간표 목록 조회
	 * @param pagingVO
	 */
	public List<Map<String,Object>> selectFaciTableList(String faciId);
	
	
	
	/**
	 * 등록하기
	 * @param faciLeaseid
	 * @return
	 */
	public int insertFacilityRes(FaciLentVO faciLeaseid);
	
}
















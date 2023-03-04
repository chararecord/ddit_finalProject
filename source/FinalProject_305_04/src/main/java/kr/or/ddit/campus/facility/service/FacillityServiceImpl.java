package kr.or.ddit.campus.facility.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.campus.facility.dao.FacilityDao;
import kr.or.ddit.vo.FaciLentVO;
import kr.or.ddit.vo.FacilityVO;

@Service
public class FacillityServiceImpl implements FacilityService {

	@Inject
	private FacilityDao facilityDao;

	/**
	 * 시설 목록 출력
	 */
	@Override
	public List<FacilityVO> retrieveFacilityList() {
		return facilityDao.selectFaciList();
	}

	/**
	 * 시설 정보 출력
	 */
	@Override
	public FacilityVO selectFaciInfo(FacilityVO facilityVO) {
		FacilityVO facilityInfo = facilityDao.selectFaciInfo(facilityVO);
		if(facilityVO == null)
			throw new RuntimeException(String.format("%s 는 없는 상품", facilityVO));
		return facilityInfo;
	}

	
	
	
	
	/**
	 * 시간표 목록 띄우기
	 */
	@Override
	public List<Map<String,Object>> selectFaciTableList(String faciId) {
		List<Map<String,Object>> facilityList = facilityDao.selectFaciTableList(faciId);
		return facilityList;
	}

	
	/**
	 * 예약 등록하기
	 */
	@Override
	public int insertFacilityRes(FaciLentVO faciLeaseid) {
		int rowcnt = facilityDao.insertFacilityRes(faciLeaseid);
		return rowcnt;
	}

	
	
	
	
	
	
	
	
	

}

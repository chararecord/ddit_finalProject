package kr.or.ddit.campus.certificate.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.CertHistoryVO;
import kr.or.ddit.vo.RecordVO;

/**
 * @author 장은호
 * @Since 2023. 2. 21.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 21.       장은호        		생성(selectHistoryList, insertCertHistory)
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface CertHistoryDAO {

	/**
	 * 사용자의 증명서 발급 내역 조회
	 * @param userId
	 * @return CertHistoryVO List
	 */
	public List<CertHistoryVO> selectHistoryList(String userId);
	
	/**
	 * 사용자의 증명서 발급 내역 등록
	 * @param certHistVO
	 * @return rowcnt
	 */
	public int insertCertHistory(CertHistoryVO certHistVO);
	
	/////////////////////////////////////////////////////////////////
	
	// 재학증명서 BJ10002
	
	// 졸업증명서 BJ10003
	
	// 수료증명서 BJ10001
	
	// 경력증명서(교수) BJ10004
	
	// 경력증명서(교직원) BJ10005
	
	
}

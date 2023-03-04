package kr.or.ddit.campus.certificate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.campus.certificate.dao.CertHistoryDAO;
import kr.or.ddit.vo.CertHistoryVO;

/**
 * @author 장은호
 * @Since 2023. 2. 21.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 21.       장은호        		생성(retrieveCertHistoryList, createCertHistory)
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
public class CertHistoryServiceImpl implements CertHistoryService {
	
	@Inject
	private CertHistoryDAO certHistDAO;

	@Override
	public List<CertHistoryVO> retrieveCertHistoryList(int userId) {
		List<CertHistoryVO> certHistoryList = certHistDAO.selectHistoryList(userId);
		return certHistoryList;
	}

	@Override
	public int createCertHistory(CertHistoryVO certHistVO) {
		int rowcnt = certHistDAO.insertCertHistory(certHistVO);
		return rowcnt;
	}

}

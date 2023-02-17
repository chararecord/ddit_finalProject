package kr.or.ddit.campus.certificate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.campus.certificate.dao.CertificateDAO;
import kr.or.ddit.vo.CertHistoryVO;
import kr.or.ddit.vo.CertificateVO;
import kr.or.ddit.vo.UsrVO;

/**
 * @author 장은호
 * @Since 2023. 2. 17.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 17.       장은호        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
public class CertificateServiceImpl implements CertificateService {
	
	@Inject
	private CertificateDAO certDAO;

	@Override
	public List<CertificateVO> retrieveCertificateList() {
		List<CertificateVO> certList = certDAO.selectCertificateList();
		return certList;

	}

	@Override
	public CertificateVO retrieveCertificate(String certId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int createCertificate(CertificateVO certVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyCertificate(CertificateVO certVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeCertificate(String certId) {
		// TODO Auto-generated method stub
		return 0;
	}

	////////////////////////////////////////////////////////////////////
	
	@Override
	public List<CertificateVO> retrieveUserCertificateList(int userId) {
		List<CertificateVO> userCertList = certDAO.selectUserCertificateList(userId);
		return userCertList;
	}

	@Override
	public UsrVO retrieveUserInfo(int userId) {
		UsrVO usrVO = certDAO.selectUserInfo(userId);
		return usrVO;
	}
	
	////////////////////////////////////////////////////////////////////

//	@Override
//	public List<CertHistoryVO> retrieveCertHistoryList(int userId) {
//		List<CertHistoryVO> certHistoryList = certDAO.selectHistoryList(userId);
//		return certHistoryList;
//	}

}

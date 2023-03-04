package kr.or.ddit.campus.certificate.service;

import java.util.List;

import kr.or.ddit.vo.CertificateVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.ProfessorVO;
import kr.or.ddit.vo.UsrVO;

/**
 * @author 장은호
 * @Since 2023. 2. 17.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 17.       장은호		        생성
 * 2023. 2. 21.       장은호                  retrieveCertHistoryList 이동
 * 2023. 2. 22.       장은호                  retrieveProfInfo, retrieveEmpInfo 추가
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
public interface CertificateService {
	
	/**
	 * 전체 증명서 목록 조회
	 * @return 증명서VO List
	 */
	public List<CertificateVO> retrieveCertificateList();
	
	/**
	 * 증명서 상세 조회
	 * @param certId
	 * @return 해당 증명서VO
	 */
	public CertificateVO retrieveCertificate(String certId);
	
	/**
	 * 증명서 등록
	 * @param certVO
	 * @return 성공 1, 실패 0
	 */
	public int createCertificate(CertificateVO certVO);
	
	/**
	 * 증명서 수정
	 * @param certVO
	 * @return 성공 1, 실패 0
	 */
	public int modifyCertificate(CertificateVO certVO);
	
	/**
	 * 증명서 삭제
	 * @param certId
	 * @return 성공 1, 실패 0
	 */
	public int removeCertificate(String certId);
	
	////////////////////////////////////////////////////////////////////
	
	/**
	 * 사용자(권한)별 증명서 목록 조회
	 * @param userId
	 * @return 증명서VO List
	 */
	public List<CertificateVO> retrieveUserCertificateList(String userId);
	
	/**
	 * 사용자 정보 조회(권한 조회용)
	 * @param userId
	 * @return UsrVO
	 */
	public UsrVO retrieveUserInfo(String userId); 
	
	
	public ProfessorVO retrieveProfInfo(String profId);
	
	public EmpVO retrieveEmpInfo(String empId);
	
	

}

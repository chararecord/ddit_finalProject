package kr.or.ddit.prof.consult.service;

import kr.or.ddit.vo.ConsultVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.UsrVO;

public interface ProfessorConsultService {
	
	/**
	 * 과 학생 목록 조회
	 * @param profId
	 * @return
	 */
	public PagingVO<UsrVO> retrieveStdList(String profId);
	
	/**
	 * 상담 목록 조회
	 * @param pagingVO
	 * @param stdId
	 */
	public void retrieveConsultList(PagingVO<ConsultVO> pagingVO, String stdId, String profId);
	
	/**
	 * 상담 승인 반려
	 * @param consultVO
	 * @return
	 */
	public int modifyConsultStatus (ConsultVO consultVO);
	
}

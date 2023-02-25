package kr.or.ddit.prof.consult.service;

import java.util.List;

import kr.or.ddit.vo.ConsultVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.UsrVO;

public interface ProfessorConsultService {
	
	/**
	 * 상담 목록 조회
	 * @param pagingVO
	 * @return
	 */
	public List<ConsultVO> retreiveConsultList(PagingVO<ConsultVO> pagingVO);
	
	/**
	 * 과 학생 목록 조회
	 * @param profId
	 * @return
	 */
	public PagingVO<UsrVO> retreiveStdList(String profId);
}

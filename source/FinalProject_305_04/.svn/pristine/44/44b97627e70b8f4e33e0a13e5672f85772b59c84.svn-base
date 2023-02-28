package kr.or.ddit.prof.consult.service;

import java.util.List;

import kr.or.ddit.vo.ConsultReplyVO;
import kr.or.ddit.vo.PagingVO;

public interface ProfessorConsultReplyService {
	
	/**
	 * 댓글 등록
	 * @param consultReplyVO
	 * @return
	 */
	public int createReply(ConsultReplyVO consultReplyVO);
	
	/**
	 * 댓글 리스트 조회
	 * @param pagingVO
	 * @return
	 */
	public List<ConsultReplyVO> retrieveReplyList(PagingVO<ConsultReplyVO> pagingVO);

	/**
	 * 댓글 삭제
	 * @param consultReplyId
	 * @return
	 */
	public int removeReply(String consultReplyId);
}

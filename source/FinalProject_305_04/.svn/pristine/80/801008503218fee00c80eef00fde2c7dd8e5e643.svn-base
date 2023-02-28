package kr.or.ddit.prof.consult.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.ConsultReplyVO;
import kr.or.ddit.vo.PagingVO;

/**
 * @author 민경진
 * @Since 2023. 2. 28.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 28.      민경진        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface ProfessorConsultReplyDAO {
	
	/**
	 * 댓글 작성
	 * @param consultReplyVO
	 * @return
	 */
	public int insertReply(ConsultReplyVO consultReplyVO);
	
	/**
	 * 댓글 리스트 조회
	 * @param pagingVO
	 * @return
	 */
	public List<ConsultReplyVO> selectReplyList (PagingVO<ConsultReplyVO> pagingVO);
	
	/**
	 * 댓글 삭제
	 * @param consultReplyVO
	 * @return
	 */
	public int deleteReply(String consultReplyId);
}

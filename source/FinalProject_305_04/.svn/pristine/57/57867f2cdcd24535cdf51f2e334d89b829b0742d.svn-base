package kr.or.ddit.prof.consult.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.prof.consult.dao.ProfessorConsultReplyDAO;
import kr.or.ddit.vo.ConsultReplyVO;
import kr.or.ddit.vo.PagingVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ProfessorConsultReplyServiceImpl implements ProfessorConsultReplyService {

	@Inject
	private ProfessorConsultReplyDAO profConsRepDAO;
	
	@Override
	public int createReply(ConsultReplyVO consultReplyVO) {
		int rowcnt = profConsRepDAO.insertReply(consultReplyVO);
		return rowcnt;
	}

	@Override
	public List<ConsultReplyVO> retrieveReplyList(PagingVO<ConsultReplyVO> pagingVO) {
		return null;
	}

	@Override
	public int removeReply(String consultReplyId) {
		int rowcnt = profConsRepDAO.deleteReply(consultReplyId);
		return rowcnt;
	}

}

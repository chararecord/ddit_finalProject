package kr.or.ddit.prof.scoreProc.service;

import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;

public interface ScoreProcessService {
	
	public void retrieveLectList(PagingVO<LectureVO> pagingVO);
	
	public void setProfId(String profId);
	
}

package kr.or.ddit.student.score.service;

import java.util.List;

import kr.or.ddit.vo.ScoreStdVO;

public interface ScoreStdService {

	/**
	 * ์ฑ์  ์กฐํ
	 * @param stdId
	 * @return
	 */
	public List<ScoreStdVO> retrieveStdScoreList(String stdId);
}

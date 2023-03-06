package kr.or.ddit.student.score.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.student.score.dao.ScoreStdDao;
import kr.or.ddit.vo.ScoreStdVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ScoreStdServiceImpl implements ScoreStdService {
	
	@Inject
	ScoreStdDao dao;

	@Override
	public List<ScoreStdVO> retrieveStdScoreList(String stdId) {
		return dao.selectStdScoreList(stdId);
	}

}

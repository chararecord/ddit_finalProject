package kr.or.ddit.prof.lectBoard.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.prof.lectBoard.dao.LectureBoardDAO;
import kr.or.ddit.vo.LectureVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class LectureBoardServiceImpl implements LectureBoardService {

	@Inject
	private LectureBoardDAO lbDAO;
	
	@Override
	public LectureVO retrieveLectInfo(String lectId) {
		LectureVO lectInfo = lbDAO.selectLectInfo(lectId);
		if(lectInfo == null) {
			throw new RuntimeException();
		}
		return lectInfo;
	}

}

package kr.or.ddit.student.priorSugang.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.student.priorSugang.dao.PriorSugangDAO;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;
import lombok.extern.slf4j.Slf4j;
/**
 * @author 민경진
 * @Since 2023. 3. 2.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 3. 2.       민경진        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Service
public class PriorSugangServiceImpl implements PriorSugangService {
	
	@Inject
	private PriorSugangDAO dao;
	
	@Override
	public List<LectureVO> retrieveLectureList(PagingVO<LectureVO> pagingVO) {
		List<LectureVO> lectureList = dao.selectLectureList(pagingVO);
		return lectureList;
	}
}

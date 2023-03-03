package kr.or.ddit.student.sugang.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.student.sugang.dao.SugangDAO;
import kr.or.ddit.vo.CurrLectVO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 민경진
 * @Since 2023. 3. 3.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 3. 3.       민경진        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Service
public class SugangServiceImpl implements SugangService {
	
	@Inject
	private SugangDAO dao;

	@Override
	public List<LectureVO> retrieveLectureList(PagingVO<LectureVO> pagingVO) {
		List<LectureVO> lectureList = dao.selectLectureList(pagingVO);
		return lectureList;
	}

	@Override
	public List<LectureVO> retrieveCartList(String stdId) {
		List<LectureVO> cartList = dao.selectCartList(stdId);
		return cartList;
	}

	@Override
	public int createSugangLect(CurrLectVO currLectVO) {
		int rowcnt = dao.insertSugangLect(currLectVO);
		return rowcnt;
	}

	@Override
	public int removeSugangLect(String curlectId) {
		int rowcnt = dao.deleteSugangLect(curlectId);
		return rowcnt;
	}
}

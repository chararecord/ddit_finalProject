package kr.or.ddit.student.priorSugang.service;

import java.util.List;

import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SugangCartVO;

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
public interface PriorSugangService {
	
	/**
	 * 강의 목록 조회
	 * @return
	 */
	public List<LectureVO> retrieveLectureList(PagingVO<LectureVO> pagingVO);
	
	/**
	 * 장바구니 목록 조회
	 * @param stdID
	 * @return
	 */
	public List<LectureVO> retrieveCartList(String stdId);
	
	/**
	 * 장바구니 추가
	 * @param cartVO
	 * @return
	 */
	public int createCart(SugangCartVO cartVO);
	
	/**
	 * 장바구니 삭제
	 * @param cartVO
	 * @return
	 */
	public int removeCart(SugangCartVO cartVO);
}

package kr.or.ddit.student.sugang.service;

import java.util.List;
import java.util.Map;

import kr.or.ddit.vo.CurrLectVO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SugangCartVO;

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
public interface SugangService {

	/**
	 * 수강신청한 강의 목록 조회
	 * @param stdId
	 * @return
	 */
	public List<LectureVO> retrieveSugangList(CurrLectVO currLectVO);
	
	/**
	 * 수강신청
	 * @param currLectVO
	 * @return
	 */
	public Map<String, Object> createSugangLect(CurrLectVO currLectVO);
	
	/**
	 * 수강신청취소
	 * @param curlectId
	 * @return
	 */
	public int removeSugangLect(CurrLectVO currLectVO);
	
	/**
	 * 수강신청 학점 조회
	 * @param currLectVO
	 * @return
	 */
	public int retrieveTotalCredit(CurrLectVO currLectVO);
}

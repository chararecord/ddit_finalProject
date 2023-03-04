package kr.or.ddit.student.sugang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

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
@Mapper
public interface SugangDAO {
	
	/**
	 * 강의 목록 조회
	 * @param pagingVO
	 * @return
	 */
	public List<LectureVO> selectLectureList(PagingVO<LectureVO> pagingVO);
	
	/**
	 * 장바구니 목록 조회
	 * @param stdId
	 * @return
	 */
	public List<LectureVO> selectCartList(String stdId);
	
	/**
	 * 수강신청
	 * @param currLectVO
	 * @return
	 */
	public int insertSugangLect(CurrLectVO currLectVO);
	
	/**
	 * 수강신청취소
	 * @param curlectId
	 * @return
	 */
	public int deleteSugangLect(String curlectId);

}

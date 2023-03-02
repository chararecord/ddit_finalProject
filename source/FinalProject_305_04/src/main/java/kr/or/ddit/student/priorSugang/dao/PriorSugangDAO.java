package kr.or.ddit.student.priorSugang.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;

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
@Mapper
public interface PriorSugangDAO {
	
	/**
	 * 강의 목록 조회
	 * @return
	 */
	public List<LectureVO> selectLectureList(PagingVO<LectureVO> pagingVO);
}

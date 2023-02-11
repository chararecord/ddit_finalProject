package kr.or.ddit.student.lectList.service;

import java.util.List;

import kr.or.ddit.vo.MyLectureVO;

/**
 * @author 이현주
 * @Since 2023. 2. 6.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 6.       이현주       생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
public interface LectListService {
	
	/**
	 * 수강중인 강의 목록 조회 (학생꺼)
	 */
	public List<MyLectureVO> retrieveLectList(int stdId, String semeId);
	
}

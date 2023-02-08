package kr.or.ddit.prof.lectroom.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.LectureVO;


/**
 * 강의 목록 관련(교수)
 * @author 이현주
 * @Since 2023. 2. 7.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 7       이현주        			생성
 * 
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Mapper
public interface ProfLectListDAO {

	/**
	 * 나의 강의 목록 조회(교수)
	 * @param profId
	 * @return
	 */
	public List<LectureVO> selectProfLectList(int profId);
	
	
	/**
	 * 나의 강의를 듣는 학생 목록 조회(교수)
	 * @param 
	 * @return
	 */
	public List<LectureVO> selectProfStdList(String lectId);
	
	
	
}

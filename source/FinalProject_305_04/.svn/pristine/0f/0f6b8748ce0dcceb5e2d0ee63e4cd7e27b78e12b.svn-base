package kr.or.ddit.student.priorSugang.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.CommVO;
import kr.or.ddit.vo.MajorVO;

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
public interface SearchListDAO {
	
	/**
	 * 단과대 목록 조회
	 * @return
	 */
	public List<Map<String, Object>> selectCollList();
	
	/**
	 * 학과 목록 조회
	 * @return
	 */
	public List<MajorVO> selectMajorList(@Param("collId") String collId);
	
	/**
	 * 이수구분 목록 조회
	 * @return
	 */
	public List<CommVO> selectSubjectList();
}

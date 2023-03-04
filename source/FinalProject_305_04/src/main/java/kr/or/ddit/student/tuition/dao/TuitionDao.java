package kr.or.ddit.student.tuition.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.TuitionPayVO;

/**
 * 등록금 내역 조회(학생)
 * @author 이현주
 * @Since 2023. 2. 24.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 24.      이현주			생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface TuitionDao {

//	/**
//	 * 등록금 내역 count
//	 * @param stdId
//	 * @return
//	 */
//	public int selectTotalRecord(String stdId);
	
	
	/**
	 * 등록금 내역 리스트 조회
	 * @param pagingVO
	 * @return
	 */
	public List<TuitionPayVO> selectTuitionList(String stdId);
	
	
	
}
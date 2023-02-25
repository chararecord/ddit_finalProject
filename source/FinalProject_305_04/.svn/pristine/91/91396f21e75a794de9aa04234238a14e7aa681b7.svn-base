package kr.or.ddit.prof.consult.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.ConsultVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.UsrVO;

/**
 * @author 민경진
 * @Since 2023. 2. 25.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 25.      민경진        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface ProfessorConsultDAO {
	
	/**
	 * 상담 목록 개수 조회
	 * @param pagingVO
	 * @return
	 */
	public int selectTotalRecord(PagingVO<ConsultVO> pagingVO);
	
	/**
	 * 과 학생 수 조회
	 * @param pagingVO
	 * @return
	 */
	public int selectTotalStd(String profId);
	
	/**
	 * 상담 목록 조회
	 * @param pagingVO
	 * @return
	 */
	public List<ConsultVO> selectConsultList(PagingVO<ConsultVO> pagingVO);
	
	/**
	 * 과 학생 목록 조회 
	 * @param map
	 * @return
	 */
	public List<UsrVO> selectStdList (String profId);
	
}

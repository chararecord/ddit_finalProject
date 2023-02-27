package kr.or.ddit.student.consult.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.ConsultVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;

/**
 * @author 민경진
 * @Since 2023. 2. 17.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 17.      민경진        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface StudentConsultDAO {
	
	public int selectTotalRecord(String stdId);
	public List<ConsultVO> selectConsultList(Map<String, Object> map);
	public ConsultVO selectConsult(String consId);
	public int insertConsult(ConsultVO consult);
	public int deleteConsultState(String consId);
	public List<ProfessorVO> selectProfList (String stdId);
}

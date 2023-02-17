package kr.or.ddit.student.consult.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.ConsultVO;
import kr.or.ddit.vo.PagingVO;

@Mapper
public interface StudentConsultDAO {
	
	public int selectTotalRecord(PagingVO<ConsultVO> pagingVO);
	public List<ConsultVO> selectConsultList(Map<String, Object> map);
	public ConsultVO selectConsult(String consId);
	public int insertConsult(ConsultVO consult);
	public int deleteConsult(String consId);
}

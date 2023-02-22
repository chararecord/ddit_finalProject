package kr.or.ddit.emp.tuitionManage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.AttendVO;
import kr.or.ddit.vo.MyLectureVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;
import kr.or.ddit.vo.TuitionPayVO;
import kr.or.ddit.vo.TuitionVO;


/**
 * 등록금 고지서 발송 (교직원)
 * @author 이현주
 * @Since 2023. 2. 20.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 20       이현주        			생성
 * 
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Mapper
public interface TuitionEmpDAO {

	/**
	 * 고지서 발송할 전체 재학생 수 조회
	 * @param semeId
	 * @return
	 */
	public int selectTotalRecord(String semeId);
	

	/**
	 * 고지서 발송할 전체 재학생 목록 조회 (교직원)
	 * @param pagingVO
	 * @param semeId 
	 * @return
	 */
	public List<TuitionVO> selectTuitionStdList(PagingVO<TuitionVO> pagingVO);
	public TuitionVO selectTuition(String tuitionId);
	
	/**
	 * 등록금 고지서 발송(교직원)
	 * @param tuitionPay
	 * @return
	 */
	public int insertTuitionSend(TuitionPayVO tuitionPay);
	


	
	
	
	
}

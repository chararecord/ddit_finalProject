package kr.or.ddit.emp.scholarshipManage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.emp.scholarshipManage.dao.ScholarshipManageDAO;
import kr.or.ddit.vo.MyStudentVO;
import kr.or.ddit.vo.PagingVO;

/**
 * 장학금 수여(교직원)
 * @author 이현주
 * @Since 2023. 3. 3.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 3. 3.     이현주        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
public class ScholarshipManageServiceImpl implements ScholarshipManageSerivce{

	
	@Autowired
	ScholarshipManageDAO scholarshipManageDAO;

//장학금 수여할 학생 목록 출력(교직원) + 카운트
	@Override
	public void retrieveScholarShipList(PagingVO<MyStudentVO> pagingVO) {
		
		pagingVO.setTotalRecord(scholarshipManageDAO.selectTotalRecord(pagingVO));
		List<MyStudentVO> schStdList = scholarshipManageDAO.selectSchStdList(pagingVO);
		pagingVO.setDataList(schStdList);
//		this.scholarshipManageDAO.selectSchStdList(pagingVO);
		}

}

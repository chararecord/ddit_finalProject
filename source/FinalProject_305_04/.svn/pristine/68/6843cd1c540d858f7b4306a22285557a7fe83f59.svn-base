package kr.or.ddit.prof.assignment.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.prof.assignment.dao.AssignmentProfDAO;
import kr.or.ddit.vo.AssignmentVO;
import kr.or.ddit.vo.PagingVO;
import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author 이선민
 * @Since 2023. 2. 20.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 20.       PC-20        생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */


@Slf4j
@Service
public class AssignmentProfServiceImpl implements AssignmentProfService {

	
	@Inject
	private AssignmentProfDAO dao;
	
	/**
	 * 과제 목록 조회 
	 * @param pagingVO
	 */
	@Override
	public void retrieveAssignmentProfList(PagingVO<AssignmentVO> pagingVO) {
		
		List<AssignmentVO> assignmentList = dao.selectProfAssignmentList(pagingVO);
		pagingVO.setDataList(assignmentList);
				
	}

	
	
	
}

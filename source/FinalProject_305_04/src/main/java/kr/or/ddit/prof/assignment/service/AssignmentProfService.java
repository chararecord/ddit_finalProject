package kr.or.ddit.prof.assignment.service;

import kr.or.ddit.vo.AssignmentVO;
import kr.or.ddit.vo.PagingVO;

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
public interface AssignmentProfService {

	
	/**
	 * 과제 목록 조회 
	 * @param pagingVO
	 */
	public void retrieveAssignmentProfList(PagingVO<AssignmentVO> pagingVO);
	
	
	
	
}

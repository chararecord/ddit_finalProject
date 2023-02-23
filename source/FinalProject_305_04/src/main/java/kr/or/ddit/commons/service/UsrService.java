package kr.or.ddit.commons.service;

import kr.or.ddit.vo.UsrVO;

/**
 * 회원관리
 * @author 민경진
 * @Since 2023. 2. 23.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 23.      민경진       	생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
public interface UsrService {

	public UsrVO retrieveUser(String userId);
}

package kr.or.ddit.student.tuition.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.vo.TuitionPayVO;
import kr.or.ddit.vo.TuitionVO;

/**
 * 등록금 내역 리스트 조회(학생)
 * @author 이현주
 * @Since 2023. 2. 24.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 023. 2. 24.     이현주				생성     
 * 
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
public interface TuitionService {

	/**
	 * 등록금 내역 리스트 조회
	 * @param stdId
	 * @return
	 */
	public List<TuitionPayVO> retrieveTuitionList(String stdId);

	/**
	 * 등록금 미납 고지서 조회
	 * @param stdId
	 * @return
	 */
	public List<TuitionVO> retrieveTuitionBill(String stdId, String semeId);
	
}

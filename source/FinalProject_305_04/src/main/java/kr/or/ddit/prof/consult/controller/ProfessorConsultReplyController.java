package kr.or.ddit.prof.consult.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.or.ddit.prof.consult.service.ProfessorConsultReplyService;
import kr.or.ddit.vo.ConsultReplyVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 민경진
 * @Since 2023. 2. 28.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 28.      민경진        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Controller("/prof/consult/replies")
public class ProfessorConsultReplyController {

	@Inject
	private ProfessorConsultReplyService service;
	
	/**
	 * reply 속성 생성 메소드 - form에게 바인딩 할 빈 모델 객체 생성
	 */
	@ModelAttribute("consultReply")
	public ConsultReplyVO professorConsultReply() {
		return new ConsultReplyVO();
	}
	
	@PostMapping(value="/new")
	public String replyInsert(
			
			) {
		
		return null;
	}
}

package kr.or.ddit.student.tuition.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 등록금 고지서 조회(학생)
 * @author 이현주
 * @Since 2023. 2. 6.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 6.       이현주      		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Controller
public class TuitionBillController {


	@RequestMapping("/student/tuition/tuitionBill")
	public String tuition() {
		return "student/tuition/tuitionBill";
	}

}



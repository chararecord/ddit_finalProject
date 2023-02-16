package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * 등록금 고지서 VO
 * @author 이현주
 * @Since 2023. 2. 15.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 15.       이현주        	    	 생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Data
@ToString
@EqualsAndHashCode(of="tuitionDetId")
public class TuitionVO {

	private String tuitionId; // 등록금 아이디
	private String semeId; // 학사연도 아이디
	private String collId; // 단과대학 아이디
	private String tuitionDetId; // 세부내역 아이디
	private String schHistId; // 장학금 내역 아이디
	private Integer tuitionAmount; // 등록금액
}

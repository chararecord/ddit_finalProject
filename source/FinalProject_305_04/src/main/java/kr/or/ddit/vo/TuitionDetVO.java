package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * 등록금 세부 내역 VO
 * @author 이현주
 * @Since 2023. 2. 15.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 15.       이현주       		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="tuitionDetId")
@ToString
public class TuitionDetVO {

	private String tuitionDetId; // 세부내역 아이디
	private String collId; // 단과대학 아이
	private String detailNm; // 세부내역명
	private Integer detailCrit; // 세부내역항목
}

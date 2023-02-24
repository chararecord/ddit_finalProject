package kr.or.ddit.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author 민경진
 * @Since 2023. 2. 8.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 8.       민경진		주석만듬
 * 2023. 2. 24.      민경진            implements Serializable 추가
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="majorId")
public class MajorVO implements Serializable {

	private String licInfoId;
	private String majorId;
	private String collId;
	private String majorNm;
	private String majorTel;
	private String dean;
	private String majorInfo;
	
	private CollVO collList;
	private SubMajorVO subMajorList;
}

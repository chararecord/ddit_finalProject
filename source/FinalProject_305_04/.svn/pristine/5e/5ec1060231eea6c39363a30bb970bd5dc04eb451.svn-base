package kr.or.ddit.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author 장은호
 * @Since 2023. 2. 23.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 23.       장은호        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="gradFulId")
public class GradFulVO implements Serializable{
	private String gradFulId;	// 졸업요건충족아이디
	private String gradReqId;	// 졸업요건아이디
	private String mgradReqId;	// 학과별졸업요건아이디
	private String stdId;		// 학번
	private String fulCheck;	// 충족여부(공통코드)
	
	private GradReqVO gradReqVO;	// has a 졸업요건VO
}

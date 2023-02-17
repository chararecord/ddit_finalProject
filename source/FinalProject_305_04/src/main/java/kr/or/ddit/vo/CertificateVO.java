package kr.or.ddit.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author 장은호
 * @Since 2023. 2. 17.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 17.       장은호        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="certId")
public class CertificateVO implements Serializable {
	
	private int rnum;
	
	private String certId;		// 증명서아이디
	private String certNm;		// 증명서명
	private String userRole;	// 사용자 구분(공통코드)
	private Integer certCharge;	// 수수료
	
	private String commDesc;	// 사용자 구분(사용자명)
}

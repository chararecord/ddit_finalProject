package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

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
@EqualsAndHashCode(of="mgradRegId")
@NoArgsConstructor
public class MGradReqVO implements Serializable {
//	private int rnum;
	
	private String mgradReqId;	// 학과별 졸업요건 아이디
	private String majorId;		// 학과 아이디
	private String semeId;		// 학사연도 아이디
	
	private SemesterVO semesterVO;	// 학사연도VO
	private MajorVO majorVO;		// 학과VO

	private String gradReqId;
	private List<GradReqVO> gradReqList;	// 졸업요건List
	
//	private int totalCredit;		// 이수해야 하는 총학점
//	private int majorReqCredit;		// 이수해야 하는 전공필수학점
//	private int majorOptCredit;		// 이수해야 하는 전공선택학점
//	private int geReqCredit;		// 이수해야 하는 교양필수학점
//	private int geOptCredit;		// 이수해야 하는 교양선택학점
	
}

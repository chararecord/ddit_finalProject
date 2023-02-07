package kr.or.ddit.vo;

import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * @author 서범수
 * @Since 2023. 2. 7.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 7.       서범수        생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="profId")
@ToString
public class ProfessorVO {
	private int rnum;
	private Integer profId;
	private String laboId;
	private String majorId;
	private String entDate;
	private String levDate;
	private String pos;
	
	private UsrVO usrList;
	private List<RecordVO> recordList;
}

package kr.or.ddit.vo;

import java.util.List;

import javax.validation.constraints.NotNull;

import kr.or.ddit.validate.DeleteGroup;
import kr.or.ddit.validate.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * 교직원 객체
 * @author 송지은
 * @Since 2023. 3. 1.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 3. 1.       송지은        		생성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="faciLeaseid")
@ToString
public class FaciLentVO extends UsrVO {
	private String faciLeaseid;
	private String faciId;
	private String userId;
	private String availTimeid;
	private String reservDate;
	private String numUsers;
	private String purUse;
	
	//FaciTime
	private List<FacilityTimeVO> facilityTimeList;
	//Facility
	private FacilityVO facilityVO;
	
	
}


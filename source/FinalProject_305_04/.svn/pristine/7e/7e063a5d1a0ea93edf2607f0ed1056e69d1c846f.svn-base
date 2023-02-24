package kr.or.ddit.vo;

import java.util.List;

import javax.validation.constraints.NotNull;

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
 * 2023. 2. 22.      장은호	       workingStatus 추가
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="profId")
@ToString
public class ProfessorVO extends UsrVO {
	private int rnum;
	@NotNull
	private String profId;
	private String laboId;
	private String majorId;
	private String entDate;
	private String levDate;
	private String pos;
	private String userNm;
	private String profNm;
	
	private String profProp;
	
	private UsrVO usrList;
	private CollVO collList;
	private MajorVO majorList;
	private List<SyllabusVO> syllabusList;
	private List<RecordVO> recordList;
	private LaboVO laboList;
	private CommVO commList;
	private BuildingVO buildingList;
	
	private List<MyLectureVO> myLectureList; // has many관계
	private List<CurrLectVO> currlectList; // has many 관계
	
	private String workingStatus;	// 재직, 퇴직 상태




}

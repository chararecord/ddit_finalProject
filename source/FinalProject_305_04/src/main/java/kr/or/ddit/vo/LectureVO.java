package kr.or.ddit.vo;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * @author 이현주
 * @Since 2023. 2. 6.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 6.      이현주        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="lectId")
@ToString
public class LectureVO extends CommonAttaFileVO implements Serializable {
	
	private int rnum;
	@NotNull
	private String lectId; // 강의코드
	private String assignRoomId; //강의실매장 아이디
	private String semeId; //학사연도아이디
	private String syllaApprId; // 강의승인 아이디
	private String lectNm; // 강의명
	private String lectState; // 개강상태
	private Integer camYear; // 대상학년
	private Integer numClass; // 현재수강인원
	private Integer credit; // 학점
	private Integer lectHour; // 강의시수
	private String textbook; // 교재
	private String lectCom; // 강의교재
	private String note; // 비고
	private String onfLine; // 대면여부(공통코드)
	
	@Override
	public String getAttaId() { // 첨부파일 쓸 때
		return lectId;
	}
	
	
}

package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of="lectId")
@ToString
public class ScoreStdVO {
	private String lectId;
	private String lectNm;
	private String critFinalScore;
	private String semeYear;
	private String seme;
	private String camYear;
	private String estaSub;
	private String credit;
	private String semeId;
}

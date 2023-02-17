package kr.or.ddit.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of="gradReqId")
public class GradReqVO implements Serializable {
	private String gradReqId;	// 졸업요건 아이디
	private String mgradReqId;	// 학과별 졸업요건 아이디
	private String reqItem;		// 요건 항목
	private String reqStand;	// 요건 기준
}

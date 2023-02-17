package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of="mgradRegId")
public class MGradReqVO implements Serializable {
	private int rnum;
	
	private String mgradReqId;	// 학과별 졸업요건 아이디
	private String majorId;		// 학과 아이디
	private String semeId;		// 학사연도 아이디
	
	private SemesterVO semesterVO;	// 학사연도VO
	private MajorVO majorVO;	// 학과VO

	private List<GradReqVO> gradReqList;	// 졸업요건List
}

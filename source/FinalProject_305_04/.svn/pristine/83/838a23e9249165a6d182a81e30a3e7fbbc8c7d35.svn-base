package kr.or.ddit.vo;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

import kr.or.ddit.validate.DeleteGroup;
import kr.or.ddit.validate.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@EqualsAndHashCode(of="consRepId")
@NoArgsConstructor
@ToString
public class ConsultReplyVO implements Serializable {
	
	@NotNull(groups= {UpdateGroup.class, DeleteGroup.class})
	private String consRepId;			// 댓글 ID
	private String consId;				// 게시글 ID
	private String userId;				// 댓글작성자 ID
	private String consRepDate;			// 댓글작성일
	private String consRepCont;			// 댓글내용
}

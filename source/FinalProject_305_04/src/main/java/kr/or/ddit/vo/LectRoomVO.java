package kr.or.ddit.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of="lectRoomId")
public class LectRoomVO {
	private String lectRoomId;
	private String buildId;
	private String roomNum;
	private Integer numPpl;
}

package kr.or.ddit.vo;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

import kr.or.ddit.validate.DeleteGroup;
import kr.or.ddit.validate.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode(of="consId")
@ToString
public class ConsultVO implements Serializable{
	
	private int rnum;
	@NotNull(groups={UpdateGroup.class, DeleteGroup.class})
	private String consId;
	private String stdId;
	private String consCat;
	private String consTitle;
	private String consCont;
	private String consAppDate;
	private String consDate;
	private String consState;
	private String consMeet;
	private String consTime;
	private String consReason;
	
	private String stdname;
	private String profname;
	
	private UsrVO userVO;
}

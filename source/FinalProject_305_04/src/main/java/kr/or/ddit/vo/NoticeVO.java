package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.validate.DeleteGroup;
import kr.or.ddit.validate.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * @author 민경진
 * @Since 2023. 2. 2.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 2.       민경진             생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="notiId")
@ToString
public class NoticeVO extends CommonAttaFileVO implements Serializable {
	private int rnum;
	@NotNull(groups={UpdateGroup.class, DeleteGroup.class})
	private String notiId;
	private String empId;
	private String tit;
	private String cont;
	private String wrDate;
	private Integer hit;
	@Override
	public String getAttaId() {
		return notiId;
	}
	
	// 첨부파일
	
	
}

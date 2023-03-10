package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.validate.DeleteGroup;
import kr.or.ddit.validate.UpdateGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

/**
 * @author 민경진
 * @Since 2023. 2. 9.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 9.       민경진        생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="lectNotiId")
@ToString
public class LectNotiVO implements Serializable {

	private int rnum;
	@NotNull(groups= {UpdateGroup.class, DeleteGroup.class})
	private String lectNotiId;
	private String lectId;
	private String tit;
	private String cont;
	private String wrDate;
	private Integer hit;
	
	private List<AttaFileVO> attaFileList;
	private int[] delAttaNos;				// 게시글 수정시 삭제할 첨부파일 번호 유지
	private int attaCount;
	private MultipartFile[] files;
	private int startAttaId;
	public void setFiles(MultipartFile[] files) {
		if(files!=null && files.length > 0) {
			this.files = files;
			this.attaFileList = Arrays.stream(files)
										.filter((f)->!f.isEmpty())
										.map((f)->{
											return new AttaFileVO(f);
										}).collect(Collectors.toList());
		}
	}
}

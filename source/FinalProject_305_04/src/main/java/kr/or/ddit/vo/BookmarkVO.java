package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of="bookmarkId")
public class BookmarkVO implements Serializable{
	private String bookmarkId;	// 즐겨찾기아이디
	private String userId;		// 사용자아이디
	
	private List<BMenuVO> bMenuList;	// 즐겨찾기메뉴

}

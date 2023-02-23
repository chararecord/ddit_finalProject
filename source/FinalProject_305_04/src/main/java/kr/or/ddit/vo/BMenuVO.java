package kr.or.ddit.vo;

import java.io.Serializable;
import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author 장은호
 * @Since 2023. 2. 22.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 22.       장은호        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Data
@EqualsAndHashCode(of="bmenuId")
public class BMenuVO implements Serializable{
	private String bmenuId;		// 즐겨찾기메뉴아이디
	private String bookmarkId;	// 즐겨찾기아이디
	private String menuId;		// 메뉴아이디
	
	private String userId;
	private List<MenuVO> menuList;	// has many 관계
}

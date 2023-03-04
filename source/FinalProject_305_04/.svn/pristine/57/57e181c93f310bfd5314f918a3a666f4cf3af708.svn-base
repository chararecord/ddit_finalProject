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
@EqualsAndHashCode(of="menuId")
@Data
public class MenuVO implements Serializable{
	private String menuId;		// 메뉴아이디
	private String parentId;	// 상위메뉴아이디
	private String menuNm;		// 메뉴명
	private String menuUrl;		// 메뉴URL
	private String menuKwd;		// 메뉴검색키워드
	private String menuRole;	// 메뉴권한
	
	private List<MenuVO> children;	// 하위메뉴리스트
}

package kr.or.ddit.commons.service;

import java.util.List;

import kr.or.ddit.vo.BMenuVO;
import kr.or.ddit.vo.MenuVO;

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
public interface MenuService {
	
	/**
	 * 공통 메뉴 목록 조회
	 * @return 공통메뉴 MenuVO의 List
	 */
	public List<MenuVO> retrieveCommMenuList();
	
	/**
	 * 학생 메뉴 목록 조회
	 * @return 학생메뉴 MenuVO의 List
	 */
	public List<MenuVO> retrieveStdMenuList();
	
	/**
	 * 교수 메뉴 목록 조회
	 * @return 교수메뉴 MenuVO의 List
	 */
	public List<MenuVO> retrievePrfMenuList();
	
	/**
	 * 교직원 메뉴 목록 조회
	 * @return 교직원메뉴 MenuVO의 List
	 */
	public List<MenuVO> retrieveEmpMenuList();
	
	////////////////////////////////////////////////////////////
	
	/**
	 * 메뉴 검색
	 * @param keyword
	 * @return keyword를 포함한 메뉴 List
	 */
	public List<MenuVO> retrieveSearchMenuList(String keyword);
	


}

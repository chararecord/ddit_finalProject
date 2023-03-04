package kr.or.ddit.commons.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

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
 * 2023. 2. 22.       장은호        		생성(selectMenuList)
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface MenuDAO {
	
	/**
	 * 공통 메뉴 목록 조회
	 * @return 공통메뉴VO의 List
	 */
	public List<MenuVO> selectCommMenuList();
	
	/**
	 * 학생 메뉴 목록 조회
	 * @return 학생메뉴VO의 List
	 */
	public List<MenuVO> selectStdMenuList();
	
	/**
	 * 교수 메뉴 목록 조회
	 * @return 교수메뉴VO의 List
	 */
	public List<MenuVO> selectPrfMenuList();
	
	/**
	 * 교직원 메뉴 목록 조회
	 * @return 교직원메뉴VO의 List
	 */
	public List<MenuVO> selectEmpMenuList();

	////////////////////////////////////////////////////////////
	
	/**
	 * 메뉴 검색
	 * @param keyword
	 * @return keyword를 포함한 메뉴 List
	 */
	public List<MenuVO> selectSearchMenuList(String keyword);
	
	

}

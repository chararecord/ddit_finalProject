package kr.or.ddit.commons.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.BMenuVO;
import kr.or.ddit.vo.BookmarkVO;
import kr.or.ddit.vo.MenuVO;

/**
 * @author 장은호
 * @Since 2023. 2. 22.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 22.       장은호        		생성(selectBMenuList)
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface BookmarkDAO {
	
	/**
	 * 사용자별 즐겨찾기 조회
	 * @param userId
	 * @return 해당 사용자의 즐겨찾기VO
	 */
	public BookmarkVO selectBookmarkVO(String userId);
	
	/**
	 * 즐겨찾기 등록
	 * @param bMenuVO
	 * @return 성공 1, 실패 0
	 */
	public int insertBMenu(BMenuVO bMenuVO);

	/**
	 * 즐겨찾기 삭제
	 * @param bMenuId
	 * @return 성공 1, 실패 0
	 */
	public int deleteBMenu(String bmenuId);
	
	/**
	 * 별을 누른 페이지의 url로 menuId를 찾기 위해 menuVO 조회 
	 * @param menuUrl
	 * @return 해당 페이지의 메뉴 정보를 가지고 있는 MenuVO
	 */
	public MenuVO selectMenuVO(String menuUrl);
	
	public BMenuVO selectBMenuVO(@Param("userId")String userId, @Param("menuUrl")String menuUrl);

}

package kr.or.ddit.commons.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.commons.dao.BookmarkDAO;
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
 * 2023. 2. 22.       장은호             생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
public class BookmarkServiceImpl implements BookmarkService {
	
	@Inject
	private BookmarkDAO bookmarkDAO;

	@Override
	public BookmarkVO retrieveBookmarkVO(String userId) {
		BookmarkVO bookmarkVO = bookmarkDAO.selectBookmarkVO(userId);
		return bookmarkVO;
	}

	@Override
	public int createBMenu(BMenuVO bMenuVO) {
		int cnt = bookmarkDAO.insertBMenu(bMenuVO);
		return cnt;
	}

	@Override
	public MenuVO retrieveMenuVO(String menuUrl) {
		MenuVO menuVO = bookmarkDAO.selectMenuVO(menuUrl);
		return menuVO;
	}

	@Override
	public int removeBMenu(String bmenuId) {
		int cnt = bookmarkDAO.deleteBMenu(bmenuId);
		return cnt;
	}

	@Override
	public BMenuVO retrieveBMenuVO(String userId, String menuUrl) {
		BMenuVO bMenuVO = bookmarkDAO.selectBMenuVO(userId, menuUrl);
		return bMenuVO;
	}
	

}

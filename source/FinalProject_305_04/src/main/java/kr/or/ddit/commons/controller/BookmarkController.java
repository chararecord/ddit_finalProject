package kr.or.ddit.commons.controller;

import javax.inject.Inject;
import javax.validation.constraints.NotNull;

import org.springframework.http.MediaType;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.commons.service.BookmarkService;
import kr.or.ddit.validate.DeleteGroup;
import kr.or.ddit.validate.UpdateGroup;
import kr.or.ddit.vo.BMenuVO;
import kr.or.ddit.vo.BookmarkVO;
import kr.or.ddit.vo.MenuVO;
import kr.or.ddit.vo.UsrVOWrapper;
import lombok.extern.slf4j.Slf4j;

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
@Slf4j
@Controller
public class BookmarkController {

	@Inject
	private BookmarkService service;
	
	@GetMapping("/bookmark")
	public String bookmarkMenu(
		@AuthenticationPrincipal UsrVOWrapper principal
		, Model model
	) {
		String userId = principal.getRealUser().getUserId();
		BookmarkVO bookmarkVO = service.retrieveBookmarkVO(userId);
		log.info("즐겨찾기메뉴{}", bookmarkVO);
//		log.info("즐찾메뉴{}", bookmarkVO.getBMenuList().get(0).getBmenuId());
		if(bookmarkVO!=null && bookmarkVO.getBMenuList().get(0).getBmenuId()!=null) {
			model.addAttribute("bookmarkVO", bookmarkVO);
		} else {
			model.addAttribute("bookmarkVO", "없어");
		}
		return "jsonView";
	}
	
	@ResponseBody
	@PostMapping(value="/bookmark", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String bookmarkInsert(
		@AuthenticationPrincipal UsrVOWrapper principal
		, @RequestBody String menuUrl
		, Model model
	) {
		String userId = principal.getRealUser().getUserId();
		
		log.info("찍찍{}", menuUrl);
		// 별을 클릭한 페이지의 URL을 이용해서 해당 메뉴 VO의 menuId 조회
		String menuId = service.retrieveMenuVO(menuUrl).getMenuId();
		String bookmarkId = service.retrieveBookmarkVO(userId).getBookmarkId();
		
		
		BMenuVO savedBMenuVO = service.retrieveBMenuVO(userId, menuUrl);
		String ret = "";
		
		// 즐겨찾기메뉴가 존재하지 않으면 insert
		if(savedBMenuVO == null) {
			// 새로운 BMenuVO 객체 생성 후 setter로 값 넣어주기
			BMenuVO bMenuVO = new BMenuVO();
			bMenuVO.setMenuId(menuId);
			bMenuVO.setBookmarkId(bookmarkId);
			
			// BMenuVO로 insert하기
			int insertCnt = service.createBMenu(bMenuVO);
			if(insertCnt > 0) {
				ret = "성공";
			} else {
				ret = "실패";
			}
			
		// 즐겨찾기메뉴가 존재하면 delete
		} else {
			log.info("찍어보자찍어보자{}", savedBMenuVO.getBmenuId());
			int deleteCnt = service.removeBMenu(savedBMenuVO.getBmenuId());
			if(deleteCnt > 0) {
				ret = "성공";
			} else {
				ret = "실패";
			}
		}
		
		return ret;
	}
	
}

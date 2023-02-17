package kr.or.ddit.campus.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.campus.news.service.NewsService;
import kr.or.ddit.vo.NewsVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import lombok.RequiredArgsConstructor;

/**
 *  뉴스 컨트롤러
 * @author 민경진
 *
 */
@RequiredArgsConstructor
@Controller
public class NewsController {
	
	private final NewsService service;

	@RequestMapping("/campus/news")
	public String newsList(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("simpleCondition") SearchVO searchVO
		, Model model
	) {
		PagingVO<NewsVO> pagingVO = new PagingVO<>(10, 5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		service.retrieveNewsList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
		
		return "campus/news/news";
	}
}

package kr.or.ddit.campus.news.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.campus.news.dao.NewsDAO;
import kr.or.ddit.vo.NewsVO;
import kr.or.ddit.vo.PagingVO;

@Service
public class NewsServiceImpl implements NewsService {
	
	@Inject
	private NewsDAO newsDAO;

	@Override
	public void retrieveNewsList(PagingVO<NewsVO> pagingVO) {
		pagingVO.setTotalRecord(newsDAO.selectTotalRecord(pagingVO));
		pagingVO.setDataList(newsDAO.selectNewsList(pagingVO));
	}

	@Override
	public int createNews(NewsVO news) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public NewsVO retrieveNews(String newsId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int modifyNews(NewsVO news) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeNews(String newsId) {
		// TODO Auto-generated method stub
		return 0;
	}

}

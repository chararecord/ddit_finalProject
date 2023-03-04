package kr.or.ddit.campus.news.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.NewsVO;
import kr.or.ddit.vo.PagingVO;

/**
 * @author 장은호
 * @Since 2023. 2. 6.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 6.       장은호                생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface NewsDAO {

	/**
	 * 뉴스 목록 전체 조회
	 * @param pagingVO
	 * @return size == 0인 경우, 조건에 맞는 레코드 없음.
	 */
	public List<NewsVO> selectNewsList(PagingVO<NewsVO> pagingVO);
	
	/**
	 * 전체 뉴스 게시글 수 조회
	 * @param pagingVO
	 * @return 전체 뉴스 게시글 수
	 */
	public int selectTotalRecord(PagingVO<NewsVO> pagingVO);
}

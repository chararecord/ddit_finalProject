package kr.or.ddit.prof.test.service;

import java.util.List;

import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.TestPasgVO;
import kr.or.ddit.vo.TestQueVO;
import kr.or.ddit.vo.TestVO;

public interface TestProfService {

	
	/**
	 * 전체 시험 출제 목록 조회  + 전체 게시글 갯수 조회 
	 * @param pagingVO
	 */
	public void retrieveTestList(PagingVO<TestVO> pagingVO, String profId);
	

	
	/**
	 * 시험 정보 뷰 
	 * @param testVO
	 * @return
	 */
	public List<TestVO> retrieveTest(TestVO testVO);
	
	
	/**
	 * 강의명 select 뷰
	 * @return
	 */
	public List<LectureVO> retrieveLecture();
	
	
	
	/**
	 * 시험등록페이지
	 * @param testVO
	 * @return
	 */
	//public int createTest(TestVO testVO);//testInfo 시험정보 insert
	//public int createQue(TestVO testVO);// 문제 insert
	//public int createPasg(TestVO testVO); //지문 insert
	//전체 받아오기 
	public String createTotalTest(TestVO testVO);
	
	
}

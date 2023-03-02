package kr.or.ddit.prof.test.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.prof.test.dao.TestProfDAO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.TestPasgVO;
import kr.or.ddit.vo.TestQueVO;
import kr.or.ddit.vo.TestVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
public class TestProfServiceImple implements TestProfService {

	// dao주입
	@Inject
	private TestProfDAO dao;

	
	/**
	 * 출제한 전체 시험 목록 조회
	 */
	@Override
	public void retrieveTestList(PagingVO<TestVO> pagingVO, String profId) {
		List<TestVO> testList = dao.testProfTotalList(pagingVO);
		log.info("testList!!! {}" , testList);
		pagingVO.setDataList(testList);
	}


	/**
	 * 시험 정보 뷰 
	 */
	@Override
	public List<TestVO> retrieveTest(TestVO testVO) {
		
		List<TestVO> test = dao.selectTestInfo(testVO);
		log.info("List<TestVO> 이거!!!!!!!!! {}",test);
		
		//examId, lectId 가져오기 
		for (int i = 0; i < test.size(); i++) {
			testVO.setExamId(test.get(i).getExamId());
			testVO.setLectId(test.get(i).getLectId());
			
			log.info("testVOgetExamId {}" , test.get(i).getExamId());
			log.info("testVOgetLectId {}" , test.get(i).getLectId());
		}
		
		/*if(test == null) {
			throw new RuntimeException(String.format("%s는 없는 시험",testVO));
		}*/
		return test;
		
	}

	
	
	/**
	 * 강의명 select 뷰
	 */
	@Override
	public List<LectureVO> retrieveLecture() {
		return dao.selectLectureList();
	}


	
	

	/**
	 * 시험등록페이지 insert
	 */
	/*@Override
	public int createTest(TestVO testVO) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int createQue(TestVO testVO) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int createPasg(TestVO testVO) {
		// TODO Auto-generated method stub
		return 0;
	}
*/

	@Override
	@Transactional
	public String createTotalTest(TestVO testVO) {
		dao.insertTest(testVO);
		dao.insertQue(testVO);
		dao.insertPasg(testVO);
		return "OK";
	}

	
	
	
	




	
	
	
}

package kr.or.ddit.student.test.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.student.test.dao.TestDAO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.TestAllowVO;
import kr.or.ddit.vo.TestAnsVO;
import kr.or.ddit.vo.TestVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Service
public class TestServiceImpl implements TestService {
	
	@Inject
	private TestDAO testDAO;

	
	
	/**
	 * 시험 목록 조회 
	 */
	@Override
	public void retrieveTestList(PagingVO<TestVO> pagingVO) {
		List<TestVO> testList = testDAO.selectTestList(pagingVO);
		//log.info("쿼리 !!!!!!!!! {} " , testList);
		pagingVO.setDataList(testList); //목록 조회
	}


	/**
	 * 시험 응시 INSERT
	 */
	@Override
	public int createTestAllow(TestAllowVO testAllow) {
		//log.info("insert allow>>>>>. {} ", test);

		log.info("test insert service >>>>>>>>>>>>>>>>>> {}" , testAllow);
		
		
		int rowcnt = testDAO.insertTestAllow(testAllow);
		return rowcnt;
	}
	
	
	/**
	 * 시험 상세조회 
	 */
	@Override
	public TestVO retrieveTest(String testId) {
		TestVO test = testDAO.selectTest(testId);
		//log.info("뷰!!!!!!!!!!! >>>>>. {} ", test);
		if(test == null) {
			throw new RuntimeException(String.format("%s는 없는 시험",testId));
		}
		return test;
	}

	/**
	 * 시험 상세조회2 
	 * @param testAllowId
	 * @return Map<String,String>
	 */
	@Override
	public Map<String,String> selectTest2(String testAllowId){
		return testDAO.selectTest2(testAllowId);
	}
	
	/**
	 * 학생제출답안  insert
	 */
	@Override
	public int submitStudentAns(TestAllowVO testAns) {
		
		//log.info("학생제출답안 !!!!!!!!!! {}", testAns);
		int rowcnt = testDAO.inserStudentAns(testAns);
		return rowcnt;
	}

	
	
	
	
	
	
	
}

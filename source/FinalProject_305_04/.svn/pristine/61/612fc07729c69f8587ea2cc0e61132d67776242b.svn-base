package kr.or.ddit.emp.studentInfo.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.ddit.commons.dao.AttaFileDAO;
import kr.or.ddit.emp.studentInfo.dao.StudentInfoDao;
import kr.or.ddit.vo.AttaFileVO;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;
import kr.or.ddit.vo.RecordVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.StudentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class StudentInfoServiceImpl implements StudentInfoService {

	@Inject
	private StudentInfoDao studentInfoDao;
	
	
//첨부파일
	@Inject
	private AttaFileDAO attaFileDAO;
	
	@Value("#{appInfo.imageFolder}")
	private File imageFolder;
	
	@Value("#{appInfo.imageFolder}")
	private String imageFolderURL;
	
	@PostConstruct
	public void init() throws IOException {
		log.info("첨부파일 저장 경로: {}", imageFolder);
	}
//첨부파일
	
	
	
	
//첨부파일
	
	
	
	
	
	/**
	 * Create (user, student, record)
	 */
	@Override
	@Transactional
	public String createStuTotalStudentInfo(StudentVO userId) {
		int rowcnt = studentInfoDao.insertUserStudentInfo(userId);
		rowcnt += studentInfoDao.insertStuStudentInfo(userId);
		rowcnt += studentInfoDao.insertRecordStudentInfo(userId);
		//첨부파일
		System.out.println("안녕 혹시 rowcnt에 뭐가 들어오니?==============" + rowcnt);
		return "OK";
	}
	/**
	 * Create (user, student, record)
	 */	
	
	
	@Override
	public void retrieveStudentInfoList(PagingVO<StudentVO> pagingVO) {
		int totalRecord = studentInfoDao.selectTotalRecord(pagingVO);
		pagingVO.setTotalRecord(studentInfoDao.selectTotalRecord(pagingVO));
		List<StudentVO> studentInfoList = studentInfoDao.selectStudentInfoList(pagingVO);
		pagingVO.setDataList(studentInfoDao.selectStudentInfoList(pagingVO));
	}

	@Override
	public StudentVO retrieveStudentInfo(String stdId) {
		StudentVO studentInfo = studentInfoDao.selectStudentInfo(stdId);
		if(studentInfo==null)
			throw new RuntimeException(String.format("%s 는 없는 상품", stdId));
		return studentInfo;
	}
	


	
	
	

	
	
	
	/**
	 * Update (user, student, record)
	 */

	@Override
	public int updateStuStudentInfo(StudentVO userId) {
		retrieveStudentInfo(userId.getUserId());
		int rowcnt = studentInfoDao.updateStuStudentInfo(userId);
		return rowcnt;
	}

	@Override
	public int updateUserStudentInfo(StudentVO userId) {
		retrieveStudentInfo(userId.getUserId());
		int rowcnt = studentInfoDao.updateUserStudentInfo(userId);
		return rowcnt;
	}

	@Override
	public RecordVO updateSelectRecordStudentInfo(String userId) {
		RecordVO recordVO = studentInfoDao.updateSelectRecordStudentInfo(userId);
		if(recordVO==null)
			throw new RuntimeException(String.format("%s 는 없는 상품", userId));
		return recordVO;
	}
	
	
	@Override
	@Transactional
	public String updateStuTotalStudentInfo(StudentVO userId) {
		int rowcnt4 = studentInfoDao.updateStuStudentInfo(userId);
		int rowcnt5 = studentInfoDao.updateUserStudentInfo(userId);
		int rowcnt6 = studentInfoDao.updateUserStudentInfo(userId);
		return "OK";
	}
	
	
	
	
	
	
	
	/**
	 * 단과대학 셀렉트박스로 띄우기
	 */
	@Override
	public List<CollVO> retrieveCollList() {
		return studentInfoDao.selectCollList();
	}

	/**
	 * 학과 셀렉트박스로 띄우기 (단과먼저 띄우고 선별됨)
	 */
	@Override
	public List<MajorVO> selectMajorList(CollVO collVO) {
		return studentInfoDao.selectMajorList(collVO);
	}

	/**
	 * 교수 셀렉트박스로 띄우기 (학과 먼저 띄우고 선별됨)
	 */
	@Override
	public List<ProfessorVO> selectProList(MajorVO majorVO) {
		return studentInfoDao.selectProList(majorVO);
	}
	
	/**
	 * 단과대학 셀렉트박스로 띄우기
	 */
	@Override
	public List<SemesterVO> selectSemeList() {
		return studentInfoDao.selectSemeList();
	}


	
	
	
}





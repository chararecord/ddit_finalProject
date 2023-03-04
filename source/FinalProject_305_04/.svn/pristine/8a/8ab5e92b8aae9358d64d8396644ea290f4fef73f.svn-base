package kr.or.ddit.student.record.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.validation.constraints.NotNull;

import org.springframework.stereotype.Service;

import kr.or.ddit.student.record.dao.RecordDAO;
import kr.or.ddit.vo.CollVO;
import kr.or.ddit.vo.MajorVO;
import kr.or.ddit.vo.RecordVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.StudentVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 장은호
 * @Since 2023. 2. 14.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 14.       장은호        		생성
 * 2023. 2. 16.       장은호                 휴학, 복학 메소드 추가
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Service
public class RecordServiceImpl implements RecordService {

	@Inject
	private RecordDAO recordDAO;


	@Override
	public StudentVO retrieveRecordList(String stdId) {
		StudentVO savedData = recordDAO.selectRecordList(stdId);
		return savedData;
	}
	
	
	@Override
	public int createRecord(RecordVO record) {
		String recNm = record.getRecNm();
		int rowcnt = 0;
		
		// DB에 있는 정보
		StudentVO savedData = retrieveRecordList(record.getStdId());
		List<RecordVO> savedRecordList = savedData.getRecordList();
		RecordVO latestRecord = savedRecordList.get(0);
		Integer latestCamYear = latestRecord.getCamYear();
		
		log.info("가장 최근 학적 구분{}", latestRecord.getRecNm());
		
		// 입학, 편입 - 학생 등록 페이지에서 처리
		
		// 휴학
		if(recNm.equals("LEA")) {
			// 가장 최근 학적 구분이 휴학인 경우 휴학 불가능
			if(latestRecord.getRecNm().equals("LEA")) {
				return rowcnt;
			}
			record.setCamYear(latestCamYear);	// 학년 그대로
			record.setRecStatus("5");			// 바로 승인
			rowcnt = recordDAO.insertRecord(record);
		}
		
		// 복학
		if(recNm.equals("RET")) {
			// 가장 최근 학적 구분이 휴학인 경우
			if(!latestRecord.getRecNm().equals("LEA")) {
				return rowcnt;
			}
			record.setCamYear(latestCamYear);	// 학년 그대로
			record.setRecStatus("5");			// 바로 승인
			rowcnt = recordDAO.insertRecord(record);
		}

		// 전과
		
		// 자퇴
		if(recNm.equals("DRP")) {
			record.setCamYear(latestCamYear);	// 학년 그대로
			record.setRecStatus("1");			// 신청완료
			rowcnt = recordDAO.insertRecord(record);
		}
		
		// 학년 진급
		if(recNm.equals("NXT")) {
			record.setCamYear(latestRecord.getCamYear()+1);
			record.setRecStatus("5");
			rowcnt = recordDAO.insertRecord(record);
		}
		
		
		// 수료
		if(recNm.equals("CMP")) {
			record.setRecStatus("5");
		}
		
		// 졸업
		if(recNm.equals("GRD")) {
			record.setRecStatus("5");
		}
		
		return rowcnt;
	}


	// 전체 단과대학 목록
	@Override
	public List<CollVO> retrieveCollegeList() {
		return recordDAO.selectCollegeList();
	}

	// 선택 단과대학의 학과 목록 
	@Override
	public List<MajorVO> retrieveMajorList(CollVO collVO) {
		List<MajorVO> majorList = recordDAO.selectMajorList(collVO);
		return majorList;
	}


	@Override
	public SemesterVO retrieveSemester() {
		SemesterVO semesterVO = recordDAO.selectSemester();
		return semesterVO;
	}


	@Override
	public SemesterVO retrieveNextSemester(SemesterVO semesterVO) {
		SemesterVO nextSemester = recordDAO.selectNextSemester(semesterVO);
		return nextSemester;
	}


	@Override
	public List<Map<String, String>> retrieveRecNmList() {
		List<Map<String, String>> recNmList = recordDAO.selectRecNmList();
		return recNmList;
	} 

	

}

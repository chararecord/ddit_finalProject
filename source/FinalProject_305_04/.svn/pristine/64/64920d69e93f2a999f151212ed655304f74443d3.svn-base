package kr.or.ddit.emp.lectroomManage.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.emp.lectroomManage.dao.LectroomManageDAO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SyllabusVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class LectroomManageServiceImpl implements LectroomManageService {
	
	@Inject
	LectroomManageDAO dao;

	@Override
	public void retrieveLectroomManageList(PagingVO<SyllabusVO> pagingVO) {
		
		int totalRecord = dao.selectTotalRecord(pagingVO);
		pagingVO.setTotalRecord(totalRecord);
		List<SyllabusVO> syllaList = dao.selectLectroomManageList(pagingVO);
		pagingVO.setDataList(syllaList);
	}

	@Override
	public SyllabusVO retrieveSyllaInfo(SyllabusVO syllaId) {
		return dao.selectSyllaInfo(syllaId);
	}

	@Override
	public SyllabusVO retrieveSylla(SyllabusVO syllaId) {
		return dao.selectsylla(syllaId);
	}

	@Override
	public int createLect(SyllabusVO syllabusVO) {
		return dao.insertLect(syllabusVO);
	}

	@Override
	public int createAssignRoom(SyllabusVO syllabusVO) {
		return dao.insertAssignRoom(syllabusVO);
	}

	@Override
	public int removeLecture(SyllabusVO syllabusVO) {
		return dao.deleteLecture(syllabusVO);
	}

	@Override
	public int removeAssignRoom(SyllabusVO syllabusVO) {
		return dao.deleteAssignRoom(syllabusVO);
	}

	@Override
	public void retrieveLectureList(PagingVO<LectureVO> pagingVO) {
		
		int totalRecord = dao.selectTotalRecordLecture(pagingVO);
		pagingVO.setTotalRecord(totalRecord);;
		List<LectureVO> lectureList = dao.selectLectureList(pagingVO);
		pagingVO.setDataList(lectureList);
	}
	
	
}

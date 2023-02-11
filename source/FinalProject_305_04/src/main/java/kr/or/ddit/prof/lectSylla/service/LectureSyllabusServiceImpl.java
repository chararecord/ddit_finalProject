package kr.or.ddit.prof.lectSylla.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.prof.lectSylla.dao.LectureSyllabusDAO;
import kr.or.ddit.vo.BuildingVO;
import kr.or.ddit.vo.LectRoomVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.SubMajorVO;
import kr.or.ddit.vo.SyllabusVO;

@Service
public class LectureSyllabusServiceImpl implements LectureSyllabusService {
	
	@Autowired
	LectureSyllabusDAO dao;
	
	@Override
	public List<SyllabusVO> retrieveSyllabusList(int profId) {
		return dao.selectSyllabusList(profId);
	}


	@Override
	public List<SemesterVO> retrieveSemesterList() {
		return dao.selectSemesterList();
	}
	
//	@Override
//	public List<SemesterVO> retrieveSemeList(String semeYear) {
//		return dao.selectSemeList(semeYear);
//	}

	@Override
	public List<BuildingVO> retrieveBuildingList() {
		return dao.selectBuildingList();
	}
	
	/**
	 * 건물목록 중 한 건물을 선택하면 강의실 목록 가져오기
	 * @return
	 */
	@Override
	public List<LectRoomVO> selectLectRoomList(BuildingVO buildingVO){
		return dao.selectLectRoomList(buildingVO);
	}

	@Override
	public int createLectSyllabus(SyllabusVO syllabusVO) {
		return dao.insertLectSyllabus(syllabusVO);
	}


	@Override
	public List<SubMajorVO> retrieveSubMajorList(HashMap<String, String> map) {
		return dao.selectSubMajorList(map);
	}


	@Override
	public SubMajorVO retrieveSubMajor(SubMajorVO subMajorVO) {
		return dao.selectSubMajor(subMajorVO);
	}




}

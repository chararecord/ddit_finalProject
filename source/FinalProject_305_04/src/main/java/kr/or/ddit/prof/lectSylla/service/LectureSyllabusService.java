package kr.or.ddit.prof.lectSylla.service;

import java.util.List;

import kr.or.ddit.vo.BuildingVO;
import kr.or.ddit.vo.LectRoomVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.SubMajorVO;
import kr.or.ddit.vo.SyllabusVO;

/**
 * @author 서범수
 * @Since 2023. 2. 7.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일           수정자            수정내용
 * --------          --------    -----------------------
 * 2023. 2. 7.       서범수        생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
public interface LectureSyllabusService {
	
	public List<SyllabusVO> retrieveSyllabusList(int profId);
	
	public List<SubMajorVO> retrieveSubMajorList(int profId);
	
	public List<SemesterVO> retrieveSemesterList();
	
	public List<BuildingVO> retrieveBuildingList();

	//건물목록 중 한 건물을 선택하면 강의실 목록 가져오기
	public List<LectRoomVO> selectLectRoomList(BuildingVO buildingVO);
}

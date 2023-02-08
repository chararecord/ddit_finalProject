package kr.or.ddit.prof.lectBoard.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.ProfessorVO;

@Mapper
public interface LectureBoardDAO {

	/**
	 * 교수정보 조회
	 * @param profId
	 * @return {@link ProfessorVO}
	 */
	public LectureVO selectLectInfo(String profId);
}

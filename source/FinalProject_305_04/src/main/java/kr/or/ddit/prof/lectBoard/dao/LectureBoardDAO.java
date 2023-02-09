package kr.or.ddit.prof.lectBoard.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.LectNotiVO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.ProfessorVO;

@Mapper
public interface LectureBoardDAO {

	/**
	 * 교수+강의정보 조회
	 * @param profId
	 * @return {@link ProfessorVO}
	 */
	public LectureVO selectLectInfo(String lectId);
	/**
	 * 게시글 개수 조회
	 * @param pagingVO
	 * @return
	 */
	public int selectTotalRecord(PagingVO<LectNotiVO> pagingVO);
	/**
	 * 게시글 목록 조회
	 * @param pagingVO
	 * @return
	 */
	public List<LectNotiVO> selectLectNoticeList(PagingVO<LectNotiVO> pagingVO);
	/**
	 * 조회수 증가
	 * @param lectNotiId
	 */
	public void incrementHit(String lectNotiId);
	/**
	 * 게시글 등록
	 * @param lectNotice
	 * @return
	 */
	public int insertLectNotice(LectNotiVO lectNotice);
	/**
	 * 게시글 수정
	 * @param lectNotice
	 * @return
	 */
	public int updateLectNotice(LectNotiVO lectNotice);
	/**
	 * 게시글 삭제
	 * @param lectNotiId
	 * @return
	 */
	public int deleteNotice(String lectNotiId);	
}

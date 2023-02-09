package kr.or.ddit.prof.lectBoard.service;

import kr.or.ddit.vo.LectNotiVO;
import kr.or.ddit.vo.LectureVO;
import kr.or.ddit.vo.PagingVO;

public interface LectureBoardService {
	
	/**
	 * 강의 정보 조회
	 * @param lectId
	 * @return
	 */
	public LectureVO retrieveLectInfo(String lectId);
	/**
	 * 게시판 목록 조회
	 * @param pagingVO
	 */
	public void retrieveLectNoticeList(PagingVO<LectNotiVO> pagingVO);
	/**
	 * 게시글 조회
	 * @param lectNotiId
	 * @return
	 */
	public LectNotiVO retreiveLectNotice(String lectNotiId);
	/**
	 * 게시글 등록
	 * @param lectNotice
	 * @return
	 */
	public int createLectNotice(LectNotiVO lectNotice);
	/**
	 * 게시글 수정
	 * @param lectNotice
	 * @return
	 */
	public int modifyLectNotice(LectNotiVO lectNotice);
	/**
	 * 게시글 삭제
	 * @param lectNotiId
	 * @return
	 */
	public int removeLectNotice(String lectNotiId);
}

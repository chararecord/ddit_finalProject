package kr.or.ddit.campus.calendar.dao;

import java.util.Calendar;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.vo.CalendarVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SemesterVO;
import kr.or.ddit.vo.StudentVO;

@Mapper
public interface CalendarDAO {
	
	//학사일정 추가
	public int insertCalendar(CalendarVO camCalId);
	
	
	//학사일정 목록
	public List<CalendarVO> selectCalendarList(PagingVO<CalendarVO> pagingVO);
	
	public int selectTotalRecord(PagingVO<CalendarVO> pagingVO);
	
	
	//달력 출력
	public List<CalendarVO> calendarList(List<CalendarVO> calendar);
	
	
	//학기 셀렉트박스 가져오기
	public List<SemesterVO> selectSemeNm();
	
	
	//일정 클릭 시 내용 출력
	public CalendarVO selectCalView(String calendarNo);
	
	
	//수정하기
	public int updateCalView(CalendarVO calendarNo);
	
	
	//삭제하기
	public int deleteCalView(String calendarNo);
	
}

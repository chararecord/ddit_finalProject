package kr.or.ddit.campus.calendar.service;

import java.util.Calendar;
import java.util.List;

import kr.or.ddit.vo.CalendarVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SemesterVO;

public interface CalendarService {
	
	//학사일정 목록
	public void retrieveCalendarList(PagingVO<CalendarVO> pagingVO);
	
	//학사일정 추가
	public int createCalendar(CalendarVO camCalId);
	
	
	//달력 출력
	public List<CalendarVO> calendarList(List<CalendarVO> calendar);

	
	//학사년도 셀렉트박스 출력
	public List<SemesterVO> selectSemeNm();
	
	
	//일정 클릭 시 내용 출력
	public CalendarVO retrieveCalView(String calendarNo);
	
	
	//수정하기
	public CalendarVO updateCalView(CalendarVO calendarNo);
	
	
	//삭제하기
	public int removeCalView(String calendarNo);
	
}

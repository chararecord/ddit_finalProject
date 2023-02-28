package kr.or.ddit.campus.calendar.service;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.or.ddit.campus.calendar.dao.CalendarDAO;
import kr.or.ddit.vo.CalendarVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SemesterVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CalendarServiceImpl implements CalendarService {

	@Autowired
	private CalendarDAO calendarDao;
	

	//학사일정 목록
	@Override
	public void retrieveCalendarList(PagingVO<CalendarVO> pagingVO) {
		int totalRecord = calendarDao.selectTotalRecord(pagingVO);
		pagingVO.setTotalRecord(calendarDao.selectTotalRecord(pagingVO));
		List<CalendarVO> calendarList = calendarDao.selectCalendarList(pagingVO);
		pagingVO.setDataList(calendarDao.selectCalendarList(pagingVO));
	}

	//학사일정 추가	
	@Override
	public int createCalendar(CalendarVO camCalId) {
		int rowcnt = calendarDao.insertCalendar(camCalId);
		
		return rowcnt;
	}
	
	//달력 출력
	@Override
	public List<CalendarVO> calendarList(List<CalendarVO> calendar) {
		return this.calendarDao.calendarList(calendar);
	}

	
	//학사년도 셀렉트박스 추가
	@Override
	public List<SemesterVO> selectSemeNm() {
		return calendarDao.selectSemeNm();
	}

	
	//학사일정 클릭시 상세정보 표출
	@Override
	public CalendarVO retrieveCalView(String calendarNo) {
		CalendarVO calendar = calendarDao.selectCalView(calendarNo);
		if(calendarNo == null)
			throw new RuntimeException(String.format("%s 는 없는 상품", calendarNo));
		return calendar;
	}
	
	
	//수정하기
	@Override
	public CalendarVO updateCalView(CalendarVO calendarNo) {
		int rowcnt = calendarDao.updateCalView(calendarNo);
		if (rowcnt > 0) {
			return calendarNo;
		} else {
			throw new RuntimeException();
		}
	}

	
	//삭제하기
	@Override
	public int removeCalView(String calendarNo) {
		
		int rowcnt = calendarDao.deleteCalView(calendarNo);
		log.info("rowcnt >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ", rowcnt);
		
		return rowcnt;
	}

	
	
	
	
	
	


	
	
	

}

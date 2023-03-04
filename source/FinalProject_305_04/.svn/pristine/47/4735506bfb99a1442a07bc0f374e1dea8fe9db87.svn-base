package kr.or.ddit.campus.calendar.controller;

import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.filter.
HiddenHttpMethodFilter;
import org.springframework.web.servlet.ModelAndView;

import kr.or.ddit.campus.calendar.service.CalendarService;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.vo.CalendarVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import kr.or.ddit.vo.SemesterVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/campus")
public class CalendarController {
	
	//DI(Dependency Injection) : 의존성 주입
	//스프링은 인터페이스를 호출
	@Autowired
	CalendarService service; 

	
	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;
	
	@Bean
	public HiddenHttpMethodFilter hiddenHttpMethodFilter(){
		return new HiddenHttpMethodFilter();
	}	
	
	
//일반 왼쪽 표 띄우기
	@ModelAttribute("calendar")
	public CalendarVO calendar(
		Model model
	) {
		
		//학사년도 셀렉트박스로 띄우기
		List<SemesterVO> semesterVO = service.selectSemeNm();
		model.addAttribute("semesterVO", semesterVO);
		
		
		return new CalendarVO();
	}	
	
	
	//리스트 띄우기
	@RequestMapping("calendar")
	public String calendarList(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage 
			, @ModelAttribute("simpleCondition") SearchVO searchVO
			, Model model
	) {
		PagingVO<CalendarVO> pagingVO = new PagingVO<>(10,5);
		pagingVO.setCurrentPage(currentPage);
		
		service.retrieveCalendarList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
		System.out.println("pagingVO" + pagingVO);
		return "campus/calendar/calendar";
	}
	
	
	@GetMapping(value="calendar", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String calendarListData(
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
			,@ModelAttribute("simpleCondition") SearchVO searchVO
			,Model model
	){
		PagingVO<CalendarVO> pagingVO = new PagingVO<>(10,5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		service.retrieveCalendarList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));
		
		return "jsonView";
		
	}
	
	
	
	//달력 디비 내용 출력하기
	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public ModelAndView getCalendarList(ModelAndView mv, HttpServletRequest request
			, @RequestParam(value="page", required=false, defaultValue="1") int currentPage
			, @ModelAttribute("simpleCondition") SearchVO searchVO
			, Model model) {
		String viewpage = "campus/calendar/calendar";
		List<CalendarVO> calendar = null;
		try {
			calendar = service.calendarList(calendar);
			log.info("calendar : " + calendar);
			
			
			PagingVO<CalendarVO> pagingVO = new PagingVO<>(10,5);
			pagingVO.setCurrentPage(currentPage);
			pagingVO.setSimpleCondition(searchVO);
			
			service.retrieveCalendarList(pagingVO);
			model.addAttribute("pagingVO", pagingVO);
			model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));
			request.setAttribute("calendarList", calendar);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName(viewpage);
		return mv;
	}
	
	
	
	//상세조회
	@ResponseBody
	@GetMapping(value="/calendarView", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public CalendarVO calendarView (
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @RequestParam("what") String calendarNo
	) {
		PagingVO<CalendarVO> pagingVO = new PagingVO<>(10,5);
		pagingVO.setCurrentPage(currentPage);
		
		CalendarVO calendar = service.retrieveCalView(calendarNo);
		
		return calendar;
	}
	
	
	//추가하기
	//요청URI : "/createCalendar"
	//요청파라미터(CalendarVO) : {}  <= 요청데이터타입 contentType:"application/json;charset=utf-8" 그래서 RequestBody를 씀
	//요청방식 : post
	//리턴방식 : ajax로 요청되었다면 ResponseBody로 리턴
	@ResponseBody
	@PostMapping("/createCalendar")
	public int createCalendar(@RequestBody CalendarVO calendarVO) {
		//calendarVO : {"calendarTitle":"개똥이","calendarMemo":"개똥이 내용","calendarStart":"2023-02-24","calendarEnd":"2023-02-24","semeId":"DA10013"}
		log.info("calendarVO : " + calendarVO);
		
		//CAM_CAL에 insert한 결과
		int result = this.service.createCalendar(calendarVO);
		
		return result;
	}
	
	
	
	
	//수정하기
	//요청URI : /campus/calendarModify
	//요청파라미터 : data : {"semeYear":"2023","calendarTitle":"안녕하세요","calendarStart":"2023-02-25","calendarEnd":"2023-02-25","calendarMemo":"ㅇㅇ"}
	//RequestParam : Map, String, int
	//ModelAttribute : VO
	//RequestBody : JSON데이터(ajax 쓸 때)
	@ResponseBody
	@PostMapping("/calendarModify")
	public String updateForm(
			@RequestBody CalendarVO calendarVO
	) {
		//calendarVO 넘버 오닝?CalendarVO(calendarNo=FN10777, calendarTitle=발표,
		//	,2, calendarMemo=발표날이닷2, calendarStart=2023-03-16, calendarEnd=2023-03-16, semeId=null, semeYear=2024, camYear=null)
		//서비스 로직 수행
		CalendarVO result = service.updateCalView(calendarVO);
		
		return result + "";
	}
	
	
	
	
	
	//삭제하기
	@ResponseBody
	@DeleteMapping("/calendarDelete")
	public String deleteCal(
		@RequestBody CalendarVO calendarVO
	) {
		
		log.info("calendarVO 삭제 오닝?" + calendarVO );
		int result = service.removeCalView(calendarVO.getCalendarNo());
		log.info("result 삭제 오닝?" + result );
		return result + "";
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}


















package kr.or.ddit.commons.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import javax.inject.Inject;
import javax.validation.constraints.NotNull;

import org.springframework.http.MediaType;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.commons.service.MenuService;
import kr.or.ddit.validate.DeleteGroup;
import kr.or.ddit.validate.UpdateGroup;
import kr.or.ddit.vo.BMenuVO;
import kr.or.ddit.vo.MenuVO;
import kr.or.ddit.vo.UsrVO;
import kr.or.ddit.vo.UsrVOWrapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MenuController {

	@Inject
	private MenuService service;
	
//	@RequestMapping("/**")
//	public String menuList(
//		@AuthenticationPrincipal UsrVOWrapper principal	
//		, Model model
//	) {
//		
//		// 공통메뉴
//		  List<MenuVO> commMenuList = service.retrieveCommMenuList();
//		  log.info("공통메뉴{}", commMenuList);
//		  model.addAttribute("commMenuList", commMenuList);
//		  
//		  UsrVO authUser = principal.getRealUser();
//		  String userRole = authUser.getUserRole();
//		  
////		  List<MenuVO> userMenuList = new ArrayList<>();
//		  
//		  // 학생일 때
////		  if(userRole.equals("ROLE_STD")) {
////			  userMenuList = service.retrieveStdMenuList();
////		  // 교수일 때
////		  } else if(userRole.equals("ROLE_PRF")) {
////			  userMenuList = service.retrievePrfMenuList();
////		  // 교직원일 때
////		  } else if(userRole.equals("ROLE_EMP")) {
////			  userMenuList = service.retrieveEmpMenuList();
////		  }
//		  
//		return "index";
//	}
	
	// 메뉴 검색
	@GetMapping(value="/search")
	public String searchMenu(
		@AuthenticationPrincipal UsrVOWrapper principal
		, @RequestParam Map<String, Object> paramMap
		, Model model 
	) {
		String userRole = principal.getRealUser().getUserRole();
		
//		log.info("키워드{}", paramMap);
		String keyword = (String) paramMap.get("keyword");
//		log.info("키워드드{}", keyword);
		List<MenuVO> searchMenuList = service.retrieveSearchMenuList(keyword);

		// 사용자별 이용 가능한 메뉴만 filter 처리
		searchMenuList = searchMenuList.stream().filter(menu -> menu.getMenuRole().contains(userRole) && menu.getMenuUrl()!=null).collect(Collectors.toList());
//		log.info("검색된 메뉴{}", searchMenuList);
		
		model.addAttribute("searchMenuList", searchMenuList);
		return "jsonView";
	}
	
	

	
}

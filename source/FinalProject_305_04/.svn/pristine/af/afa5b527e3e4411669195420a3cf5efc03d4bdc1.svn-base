package kr.or.ddit.commons;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.commons.service.MenuService;
import kr.or.ddit.commons.service.UsrService;
import kr.or.ddit.vo.MenuVO;
import kr.or.ddit.vo.UsrVO;
import kr.or.ddit.vo.UsrVOWrapper;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class IndexController {
	
	@Inject
	private UsrService service;
	@Inject
	private MenuService menuService;
	
   @RequestMapping("/")
   public String index(
		   @AuthenticationPrincipal UsrVOWrapper principal
		   , Model model
		   ) {
	   
	  UsrVO authUser = principal.getRealUser();
	  log.info("principal============================", principal);
	  log.info("authUser============================", authUser);
	  
	  UsrVO user = service.retrieveUser(authUser.getUserId());
	  
	  model.addAttribute("user", user);
	  
	// 공통메뉴
	  List<MenuVO> commMenuList = menuService.retrieveCommMenuList();
	  log.info("공통메뉴{}", commMenuList);
	  model.addAttribute("commMenuList", commMenuList);
	  
	  
	  
      return "index";
   }
   
    @GetMapping(value="/", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
    public String menuList(
    		@AuthenticationPrincipal UsrVOWrapper principal
 		   , Model model
	) {
    	
    	// 공통메뉴
  	  List<MenuVO> commMenuList = menuService.retrieveCommMenuList();
  	  log.info("공통메뉴{}", commMenuList);
  	  model.addAttribute("commMenuList", commMenuList);
  	  
  	  String userRole = principal.getRealUser().getUserRole();
  	  List<MenuVO> userMenuList = new ArrayList<MenuVO>();
  	  
  	  // 학생일 때
  	  if(userRole.equals("ROLE_STD")) {
  		userMenuList = menuService.retrieveStdMenuList();
  		log.info("학생메뉴{}", userMenuList);
//  	  // 교수일 때
//  	  } else if(userRole.equals("ROLE_PRF")) {
//  		  List<MenuVO> prfMenuList = menuService.retrievePrfMenuList();
//  	  // 교직원일 때
//  	  } else if(userRole.equals("ROLE_EMP")) {
//  		  List<MenuVO> empMenuList = menuService.retrieveEmpMenuList();
  	  }
  	  model.addAttribute("userMenuList", userMenuList);
	   return "jsonView";
   }
   
}
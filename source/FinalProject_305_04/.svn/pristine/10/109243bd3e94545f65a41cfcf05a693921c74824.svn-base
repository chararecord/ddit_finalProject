package kr.or.ddit.commons.service;

import java.util.List;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.commons.dao.MenuDAO;
import kr.or.ddit.vo.BMenuVO;
import kr.or.ddit.vo.MenuVO;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 장은호
 * @Since 2023. 2. 22.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 22.       장은호        		생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
public class MenuServiceImpl implements MenuService {
	
	@Inject
	private MenuDAO menuDAO;
	
	@Override
	public List<MenuVO> retrieveCommMenuList() {
		List<MenuVO> commMenuList = menuDAO.selectCommMenuList();
		return commMenuList;
	}
	
	@Override
	public List<MenuVO> retrieveStdMenuList() {
		List<MenuVO> stdMenuList = menuDAO.selectStdMenuList();
		stdMenuList = stdMenuList.stream().filter(m -> m.getParentId()==null && m.getChildren().size() >= 0).collect(Collectors.toList());
		return stdMenuList;
	}
	
	@Override
	public List<MenuVO> retrievePrfMenuList() {
		List<MenuVO> prfMenuList = menuDAO.selectPrfMenuList();
		return prfMenuList;
	}

	@Override
	public List<MenuVO> retrieveEmpMenuList() {
		List<MenuVO> empMenuList = menuDAO.selectEmpMenuList();
		return empMenuList;
	}

	////////////////////////////////////////////////////////////////////

	@Override
	public List<MenuVO> retrieveSearchMenuList(String keyword) {
		List<MenuVO> menuList = menuDAO.selectSearchMenuList(keyword);
		return menuList;
	}
	



}

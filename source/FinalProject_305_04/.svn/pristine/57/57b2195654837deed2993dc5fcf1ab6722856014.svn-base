package kr.or.ddit.commons.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.commons.dao.BMenuDAO;
import kr.or.ddit.vo.BMenuVO;

/**
 * @author 장은호
 * @Since 2023. 2. 22.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------          --------    -----------------------
 * 2023. 2. 22.       장은호             생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
public class BMenuServiceImpl implements BMenuService {

	@Inject
	private BMenuDAO bMenuDAO;

	@Override
	public List<BMenuVO> retrieveBMenuList(int userId) {
		List<BMenuVO> bMenuList = bMenuDAO.selectBMenuList(userId);
		return bMenuList;
	}

}

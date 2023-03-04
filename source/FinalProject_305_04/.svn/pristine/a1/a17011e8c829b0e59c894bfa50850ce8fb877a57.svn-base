package kr.or.ddit.commons.service;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.or.ddit.commons.dao.UsrDAO;
import kr.or.ddit.exception.UserNotFoundException;
import kr.or.ddit.vo.UsrVO;
import lombok.extern.slf4j.Slf4j;

/**
 * 회원관리
 * @author 민경진
 * @Since 2023. 2. 23.
 * <pre>
 *
 * ======[[개정이력(Modification Information)]]======
 *   수정일                    수정자                        수정내용
 * --------        --------    -----------------------
 * 2023. 2. 23.      민경진       	생성
 *
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Service
public class UsrServiceImpl implements UsrService {

	@Inject
	private UsrDAO userDAO;
	
	@Resource(name="authenticationManager")
	private AuthenticationManager authenticationManager;
	
	@Inject
	private PasswordEncoder encoder;
	
	@PostConstruct
	public void init() {
		log.info("주입된 객체 : {}, {}, {}", userDAO, authenticationManager, encoder);
	}
	
	@Override
	public UsrVO retrieveUser(String userId) {
		UsrVO user = userDAO.selectUser(userId);
		if(user==null) {
			throw new UserNotFoundException(String.format(userId + "에 해당하는 사용자가 존재하지 않습니다."));
		}
		return user;
	}
}

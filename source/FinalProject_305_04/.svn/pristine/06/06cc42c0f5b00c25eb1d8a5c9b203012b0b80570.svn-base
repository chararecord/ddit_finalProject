package kr.or.ddit.commons.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kr.or.ddit.vo.UsrVO;
import kr.or.ddit.vo.UsrVOWrapper;

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
@Mapper
public interface UsrDAO {
//public interface UsrDAO extends UserDetailsService {

//	@Override
//	default UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//		UsrVO user = selectUser(username);
//		if(user==null) {
//			throw new UsernameNotFoundException("사람이없어요");
//		}
//		
//		UserDetails member = new UsrVOWrapper(user);
//		return member;
//	}
	
	public UsrVO selectUser(@Param("userId") String userId);
	
	public UsrVO selectEmp(@Param("userId")String userId);
	public UsrVO selectStd(@Param("userId")String userId);
	public UsrVO selectProf(@Param("userId")String userId);
}

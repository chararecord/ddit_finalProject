package kr.or.ddit.vo;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

public class UsrVOWrapper extends User {
	
	private UsrVO realUser;

	public UsrVOWrapper(UsrVO realUser) {
		super(realUser.getUserId().toString(), realUser.getUserPass()
//				, AuthorityUtils.createAuthorityList(realUser.getUserRole(), realUser.getUserType()));
				, AuthorityUtils.createAuthorityList(realUser.getUserRole()));
		this.realUser = realUser;
	}
	
	public UsrVO getRealUser() {
		return realUser;
	}
}

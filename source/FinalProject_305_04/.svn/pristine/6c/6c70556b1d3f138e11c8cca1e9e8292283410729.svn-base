package kr.or.ddit.commons.dao;

import javax.inject.Inject;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import kr.or.ddit.vo.UsrVO;
import kr.or.ddit.vo.UsrVOWrapper;


@Service("userDetailsService")
public class UserDetailServiceImpl implements UserDetailsService{
   @Inject
   private UsrDAO userDAO;
   @Inject
   private MessageSourceAccessor accessor;
   
   @Override
   public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
      UsrVO user = userDAO.selectUser(username);
      
      LocaleContextHolder.getLocale();
      if(user==null) {
         String exceptionMessage = accessor.getMessage("JdbcDaoImpl.notFound", new Object[] {username});
         throw new UsernameNotFoundException(exceptionMessage);
      }
      UserDetails usr = new UsrVOWrapper(user);
      return usr;
   }
}
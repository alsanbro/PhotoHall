package com.yitao.core.controller.web;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.BeanParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Context;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.yitao.core.Constants;
import com.yitao.core.dao.AccountRepository;
import com.yitao.core.model.Account;
import com.yitao.core.service.AbstractService;


@Controller
@Path(Constants.WEB_PATH + "login")
public class LoginController extends AbstractService {

	@Inject
	private AccountRepository repository;
	@Inject
	private PasswordEncoder passwordEncoder;
	
	@GET
	public void find() {	
	}
	
	@POST
	@Transactional
	public Account create(@BeanParam Account account,@Context HttpServletRequest request) {
		String username = account.getUsername();
	    String password = passwordEncoder.encode(account.getPassword());
	    Account _account = repository.findByUsername(username);
	    if(_account != null){
		    if(password.equals(repository.findByUsername(username).getPassword())){
		    	request.setAttribute(Constants.REQUEST_PARAM_REDIRECT_KEY, "/index" + ".html");
		    	return _account;
		    }
	    }
	    HttpSession session = request.getSession();
	    session.setAttribute("username", username);
	    request.setAttribute(Constants.REQUEST_PARAM_REDIRECT_KEY, "/index" + ".html");
		return null;
	}
	
}

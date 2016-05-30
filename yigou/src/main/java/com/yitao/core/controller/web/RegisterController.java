package com.yitao.core.controller.web;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.BeanParam;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;

import org.apache.commons.lang3.StringUtils;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.yitao.core.Constants;
import com.yitao.core.dao.AccountRepository;
import com.yitao.core.dao.UserRepository;
import com.yitao.core.model.Account;
import com.yitao.core.model.User;
import com.yitao.core.service.AbstractService;


@Controller
@Path(Constants.WEB_PATH + "register")
public class RegisterController extends AbstractService {

	@Inject
	private UserRepository userRepository;
	
	@Inject 
	private AccountRepository repository;
	
	@Inject
	private PasswordEncoder passwordEncoder;
	
	
	@GET
	public Account find(@QueryParam("uid") long uid) {
		return this.repository.findByUserId(uid);
	}
	
	@POST
	@Transactional
	public void create(@BeanParam Account account
			, @FormParam("email") String email,
			@FormParam("sex") Integer sex,
			@FormParam("selYear") String selYear,
			@FormParam("selMonth") String selMonth,
			@FormParam("selDay") String selDay,
			@FormParam("area") String area,
			@FormParam("province") String province,
			@FormParam("city") String city,
			@Context HttpServletRequest request) {
		if (StringUtils.isNotEmpty(account.getPassword())) {
			account.setPassword(passwordEncoder.encode(account.getPassword()));
		}
		User user = new User();
		user.setEmail(email);
		user.setSex(sex);
		if(!("".equals(selYear))&&!("".equals(selMonth))&&!("".equals(selDay)) ){
			String biryhday  = selYear+"年"+selMonth+"月"+selDay+"日";
			user.setBirthday(biryhday);
		}
		String place = province + city +area;
		user.setPlace(place);
		account.setUser(user);
		this.userRepository.save(user);
		this.repository.save(account);
		request.setAttribute(Constants.REQUEST_PARAM_REDIRECT_KEY, "/login" + ".html");
		return ;
	}
	
}

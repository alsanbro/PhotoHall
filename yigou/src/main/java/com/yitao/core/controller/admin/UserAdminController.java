/**
 * 
 */
package com.yitao.core.controller.admin;

import com.yitao.core.Constants;
import com.yitao.core.dao.UserGroupRepository;
import com.yitao.core.dao.UserRepository;
import com.yitao.core.model.User;
import com.yitao.core.service.AbstractCrudController;
import com.yitao.core.vo.PageImpl;
import com.yitao.core.vo.PageParams;
import com.yitao.core.vo.UserParams;
import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;

/**
 * @author iDay
 *
 */
@Controller
@Path(Constants.ADMIN_PATH + "user")
@RolesAllowed("ROLE_ADMIN")
public class UserAdminController extends AbstractCrudController<UserRepository, UserParams, User, Long> {

	@Inject
	private UserGroupRepository groupRepository;

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.yunpeng.core.service.AbstractCrudController#find(com.yunpeng.core.vo.
	 * PageParams, javax.ws.rs.core.UriInfo)
	 */
	@Override
	@GET
	public Page<User> find(@BeanParam PageParams pageParams, @Context UriInfo uri) {
		Long groupId = NumberUtils.toLong(uri.getQueryParameters().getFirst("group_id"));
		Page<User> page = super.find(pageParams, uri);
		if (groupId > 0) {
			page = new PageImpl<>(page, pageParams, this.groupRepository.findOne(groupId));
		}
		return page;
	}

	/* (non-Javadoc)
	 * @see com.yunpeng.core.service.AbstractCrudController#destroy(java.io.Serializable)
	 */
	@Override
	@DELETE
	@Path("{id:\\d+}")
	@Transactional
	public Long destroy(@PathParam("id") Long id) {
		User user = this.repository.findOne(id);
		if (user.isLocked()) {
			this.repository.delete(user);
			return id;
		}
		return -1L;
	}

}

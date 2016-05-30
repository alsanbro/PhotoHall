package com.yitao.core.controller.admin;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.BeanParam;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;

import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;

import com.yitao.core.Constants;
import com.yitao.core.dao.CategoryRepository;
import com.yitao.core.dao.PhotoRepository;
import com.yitao.core.model.Photo;
import com.yitao.core.service.AbstractCrudController;
import com.yitao.core.vo.PageImpl;
import com.yitao.core.vo.PageParams;
import com.yitao.core.vo.PhotoParams;


@Controller
@Path(Constants.ADMIN_PATH + "photo")
//@RolesAllowed("ROLE_EDITOR")
public class PhotoAdminController extends AbstractCrudController<PhotoRepository, PhotoParams, Photo, Long>{

	@Inject
	private CategoryRepository categoryRepository;
	
	@GET
	public Page<Photo> find(@BeanParam PageParams pageParams, @Context UriInfo uri) {
		Long categoryId = NumberUtils.toLong(uri.getQueryParameters().getFirst("category_id"));
		Page<Photo> page = super.find(pageParams, uri);
		if (categoryId > 0) {
			page = new PageImpl<>(page, pageParams, this.categoryRepository.findOne(categoryId));
		}
		return page;
	}
}

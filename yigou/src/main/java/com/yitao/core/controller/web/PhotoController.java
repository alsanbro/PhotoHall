package com.yitao.core.controller.web;

import javax.inject.Inject;
import javax.ws.rs.BeanParam;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.WebApplicationException;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.yitao.core.Constants;
import com.yitao.core.dao.PhotoRepository;
import com.yitao.core.model.Photo;
import com.yitao.core.service.AbstractService;
import com.yitao.core.vo.PhotoParams;


@Controller
@Path(Constants.WEB_PATH + "photo")
public class PhotoController extends AbstractService{

	@Inject
	private PhotoRepository photoRepository;
	
	@GET
	@Path("{id:\\d+}")
	public Photo findOne(@PathParam("id") Long id) {
		Photo photo = this.photoRepository.findOne(id);
		if (photo == null) {
			throw new WebApplicationException();
		}
		return photo;
	}

	@POST
	@Transactional
	public Photo create(@BeanParam PhotoParams params) {
		return this.photoRepository.save(params.getModel());
	}

	@PUT
	@Path("{id:\\d+}")
	@Transactional
	public Photo update(@BeanParam PhotoParams params) {
		return this.photoRepository.save(params.getModel());
	}

	@DELETE
	@Path("{id:\\d+}")
	@Transactional
	public Long destroy(@PathParam("id") Long id) {
		// DELETE操作默认不做处理
		return id;
	}

	@GET
	@Path("edit/{id:\\d+}")
	public Photo edit(@PathParam("id") Long id) {
		return this.photoRepository.findOne(id);
	}
}

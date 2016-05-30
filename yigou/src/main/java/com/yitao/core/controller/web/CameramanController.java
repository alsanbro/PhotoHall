package com.yitao.core.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.ws.rs.BeanParam;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.WebApplicationException;

import org.glassfish.jersey.server.mvc.Template;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.yitao.core.Constants;
import com.yitao.core.dao.AlbumRepository;
import com.yitao.core.dao.CategoryRepository;
import com.yitao.core.dao.PhotoRepository;
import com.yitao.core.model.Album;
import com.yitao.core.model.Category;
import com.yitao.core.model.Photo;
import com.yitao.core.service.AbstractService;
import com.yitao.core.service.AlbumService;
import com.yitao.core.vo.CategoryParams;
import com.yitao.core.vo.PageParams;


@Controller
@Path(Constants.WEB_PATH + "cameraman")
public class CameramanController extends AbstractService{

	
	@Inject
	private CategoryRepository categoryRepository;
	
	@Inject
	private PhotoRepository photoRepository;
	
	@Inject
	private AlbumService albumService;

	@GET
	public Map<String, Object> index() {
		Map<String, Object> counts = new HashMap<>();
//		long index = 0; 
//		counts.put("cover", index);
		counts.put("model", this.albumService.findAll());
		return counts;
	}
	
	@GET
	@Path("{id:\\d+}")
	public Album findOne(@PathParam("id") Long id) {
		Album cameraman = this.albumService.findOne(id);
		if (cameraman == null) {
			throw new WebApplicationException();
		}
		return cameraman;
	}
	
	@GET
	@Path("photo/{id:\\d+}")
	@Template(name = "/cameraman-photo")
	public Map<String, Page> content(@PathParam("id") Long id,@BeanParam PageParams pageParams) {
		Map<String, Page> counts = new HashMap<>();
		Page<Photo> photos = this.photoRepository.findByAlbumId(id, pageParams);
		counts.put("model", photos);
		return counts;
	}

	@POST
	@Transactional
	public Category create(@BeanParam CategoryParams params) {
		return this.categoryRepository.save(params.getModel());
	}

	@PUT
	@Path("{id:\\d+}")
	@Transactional
	public Category update(@BeanParam CategoryParams params) {
		return this.categoryRepository.save(params.getModel());
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
	public Category edit(@PathParam("id") Long id) {
		return this.categoryRepository.findOne(id);
	}
}

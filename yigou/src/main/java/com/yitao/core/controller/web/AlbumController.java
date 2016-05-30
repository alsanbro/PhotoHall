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
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;

import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;

import com.yitao.core.Constants;
import com.yitao.core.dao.AlbumRepository;
import com.yitao.core.model.Album;
import com.yitao.core.service.AbstractService;
import com.yitao.core.vo.AlbumParams;
import com.yitao.core.vo.PageImpl;
import com.yitao.core.vo.PageParams;

@Controller
@Path(Constants.WEB_PATH + "album")
public class AlbumController extends AbstractService {

	@Inject
	private AlbumRepository albumRepository;
	
	public Page<Album> rawfind(@BeanParam PageParams pageParams, @Context UriInfo uri) {
		if (!uri.getQueryParameters().isEmpty()) {
			return this.albumRepository.findAll(this.specification(uri), pageParams);
		} else {
			return this.albumRepository.findAll(pageParams);
		}
	}
	
	@GET
    public Page<Album> find(@BeanParam PageParams pageParams, @Context UriInfo uri) {
        Long parentId = NumberUtils.toLong(uri.getQueryParameters().getFirst("parent_id"));
        Page<Album> page = rawfind(pageParams, uri);
        if (parentId > 0) {
            page = new PageImpl<>(page, pageParams, this.albumRepository.findOne(parentId));
        }
        return page;
    }
	
	@GET
	@Path("{id:\\d+}")
	public Album findOne(@PathParam("id") Long id) {
		Album album = this.albumRepository.findOne(id);
		if (album == null) {
			throw new WebApplicationException();
		}
		return album;
	}

	@POST
	@Transactional
	public Album create(@BeanParam AlbumParams params) {
		return this.albumRepository.save(params.getModel());
	}

	@PUT
	@Path("{id:\\d+}")
	@Transactional
	public Album update(@BeanParam AlbumParams params) {
		return this.albumRepository.save(params.getModel());
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
	public Album edit(@PathParam("id") Long id) {
		return this.albumRepository.findOne(id);
	}
}

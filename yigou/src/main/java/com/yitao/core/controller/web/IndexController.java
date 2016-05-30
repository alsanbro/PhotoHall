/**
 * 
 */
package com.yitao.core.controller.web;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;

import com.yitao.core.Constants;
import com.yitao.core.dao.CategoryRepository;
import com.yitao.core.dao.PhotoRepository;
import com.yitao.core.service.AbstractService;

/**
 * @author zx
 *
 */
@Path(Constants.ROOT_PATH + "index")
@Controller
public class IndexController extends AbstractService {
	
	@Inject
	private PhotoRepository photoRepository;
	

	@GET
	public Map<String, Page> list() {
		Map<String, Page> counts = new HashMap<>();
//		counts.put("categories", this.categoryRepository.count());
		counts.put("model", this.photoRepository.findAll(new PageRequest(0, 36)));
		return counts;
	}
	
}

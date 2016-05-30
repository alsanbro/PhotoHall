/**
 * 
 */
package com.yitao.core.controller.admin;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;

import org.springframework.stereotype.Controller;

import com.yitao.core.Constants;
import com.yitao.core.dao.CategoryRepository;
import com.yitao.core.dao.PhotoRepository;
import com.yitao.core.service.AbstractService;

/**
 * @author iDay
 *
 */
@Path(Constants.ADMIN_PATH + "index")
@Controller
//@RolesAllowed("ROLE_EDITOR")
public class IndexAdminController extends AbstractService {
	
	@Inject
	private PhotoRepository photoRepository;
	@Inject
	private CategoryRepository categoryRepository;

	@GET
	public Map<String, Long> list() {
		Map<String, Long> counts = new HashMap<>();
		counts.put("categories", this.categoryRepository.count());
		counts.put("photo", this.photoRepository.count());
		return counts;
	}
	
}

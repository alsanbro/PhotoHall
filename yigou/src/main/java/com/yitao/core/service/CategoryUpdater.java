package com.yitao.core.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.yitao.core.dao.CategoryRepository;
import com.yitao.core.model.Category;


@Service
public class CategoryUpdater extends YitaoInitializer {


	@Inject
	private CategoryRepository categoryRepository;

	@Override
	protected void doInit() {
		String[] categorytname = { "人物摄影", "风光摄影","静物摄影","婚纱摄影","活动庆典","其它" };
		String[] urls = { "/category/portrait.html", "/category/landscape.html", "/category/still-life.html", "/category/wedding.html", "/category/celebration.html","/category/else.html" };
		Category category;
		// List<Menu> menus1 = new ArrayList<>();
		for (int j = 0; j < categorytname.length; j++) {
			category = this.categoryRepository.findByName(categorytname[j]);
			if (category == null) {
				if (category == null) {
					category = this.categoryRepository.save(new Category(categorytname[j], urls[j]));
				}
			}
			categoryRepository.save(category);
		}

	}

}

/**
 * Created by zx on 2016年5月5日.
 */
package com.yitao.core.vo;

import javax.ws.rs.FormParam;

import com.yitao.core.model.Album;
import com.yitao.core.model.Category;

/**
 * @author lenovo
 *
 */
public class AlbumParams extends ModelParams<Album> {

	@FormParam("category")
	private Long categoryId;

	public AlbumParams() {
		super();
	}

	public AlbumParams(Long categoryId) {
		super();
		this.categoryId = categoryId;
	}

	public Long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}

	@Override
	public Album getModel() {
		if(categoryId != null){
			this.model.setCategory(new Category(this.categoryId));
		}
		return super.getModel();
	}
}

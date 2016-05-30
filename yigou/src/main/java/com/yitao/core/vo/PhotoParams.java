package com.yitao.core.vo;

import javax.ws.rs.FormParam;

import com.yitao.core.model.Album;
import com.yitao.core.model.Photo;

public class PhotoParams extends ModelParams<Photo>{
	
	@FormParam("album")
	private Long albumId;

	
	
	public PhotoParams() {
		super();
	}


	public Long getAlbumId() {
		return albumId;
	}


	public void setAlbumId(Long albumId) {
		this.albumId = albumId;
	}


	@Override
	public Photo getModel() {
		if(albumId != null){
			this.model.setAlbum(new Album(this.albumId));
		}
		return super.getModel();
	}
}

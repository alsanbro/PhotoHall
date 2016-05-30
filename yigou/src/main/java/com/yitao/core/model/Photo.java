package com.yitao.core.model;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.ws.rs.FormParam;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
public class Photo extends BaseModel {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = -500640707400723089L;
	@FormParam("title")    
	private String title;    //作品标题
	@FormParam("brief")
	private String brief;    //作品简介
	@FormParam("place")
	private String place;    //拍摄地点
	@FormParam("time")
	private String time;     //拍摄时间
	@FormParam("tools")
	private String tools;    //拍摄工具
	@FormParam("url")
	private String url;
	@ManyToOne
	@JsonBackReference
	private Album album;

	
	public Photo() {
		super();
	}
	
	public Photo(Long id)  {
		super(id);
	}




	public Photo(String title, String brief, String place, String time, String tools, String url, Album album) {
		super();
		this.title = title;
		this.brief = brief;
		this.place = place;
		this.time = time;
		this.tools = tools;
		this.url = url;
		this.album = album;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBrief() {
		return brief;
	}

	public void setBrief(String brief) {
		this.brief = brief;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getTools() {
		return tools;
	}

	public void setTools(String tools) {
		this.tools = tools;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Album getAlbum() {
		return album;
	}

	public void setAlbum(Album album) {
		this.album = album;
	}


	
	
}

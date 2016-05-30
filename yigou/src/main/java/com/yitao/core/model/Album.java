package com.yitao.core.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.NamedAttributeNode;
import javax.persistence.NamedEntityGraph;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.OrderBy;
import javax.ws.rs.FormParam;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@NamedEntityGraph(name = "album.photos", attributeNodes = { @NamedAttributeNode("photos") })
public class Album extends BaseModel {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5682481778300720644L;

	@FormParam("title")    
	private String title;    //相册名称
	@FormParam("brief")
	private String brief;    //相册简介
	@FormParam("num")
	private int num;		//相册中照片的数量
	@ManyToOne
	private Category category;  //相册分类
	@OneToMany(mappedBy = "album")
    @OrderBy("createdDate desc")
    @JsonManagedReference
    @Cache(usage = CacheConcurrencyStrategy.TRANSACTIONAL)
    private List<Photo> photos ;
	
	public Album() {
		super();
	}
	
	public Album(Long id) {
        super(id);
    }
	
	public Album(String title, String brief,int num, Category category) {
		super();
		this.title = title;
		this.brief = brief;
		this.num=num;
		this.category = category;
	}

	public int getNum() {
		return num;
	}

	public void setNum() {
		this.num = photos.size();
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the brief
	 */
	public String getBrief() {
		return brief;
	}

	/**
	 * @param brief the brief to set
	 */
	public void setBrief(String brief) {
		this.brief = brief;
	}

	/**
	 * @return the category
	 */
	public Category getCategory() {
		return category;
	}

	/**
	 * @param category the category to set
	 */
	public void setCategory(Category category) {
		this.category = category;
	}

	/**
	 * @return the photos
	 */
	public List<Photo> getPhotos() {
		return photos;
	}

	/**
	 * @param photos the photos to set
	 */
	public void setPhotos(List<Photo> photos) {
		this.photos = photos;
	}
	
	
}

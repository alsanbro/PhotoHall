package com.yitao.core.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.hibernate.Hibernate;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.yitao.core.dao.AlbumRepository;
import com.yitao.core.model.Album;

@Service
public class AlbumService extends AbstractService{


	@Inject
	private AlbumRepository repository;

	public Album findOne(Long id) {
		Album album = this.repository.findOne(id);
		if (album != null) {
			Hibernate.initialize(album.getPhotos());
		}
		return album;
	}

	public Album findOne(Specification<Album> specification) {
		Album album = this.repository.findOne(specification);
		if (album != null) {
			Hibernate.initialize(album.getPhotos());
		}
		return album;
	}
	
	public Page<Album> findAll() {
		Page<Album> albums = this.repository.findAll(new PageRequest(0, 100000));
		for(Album album : albums){
			if (album != null) {
				Hibernate.initialize(album.getPhotos());
			}
		}
		return albums;
	}
	
	
//	public Page<Photo> findContent(long id,PageParams pageParams) {
//		Page<Photo> photos = this.photoRepository.findByAlbumId(id, pageParams);
//		return album;
//	}
}

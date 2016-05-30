package com.yitao.core.dao;

import javax.persistence.QueryHint;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.QueryHints;

import com.yitao.core.model.Photo;

public interface PhotoRepository extends HibernateBasedRepository<Photo, Long> {

	
	@QueryHints(value = @QueryHint(name = org.hibernate.jpa.QueryHints.HINT_CACHEABLE, value = "true"), forCounting = true)
	Photo findOne(Long id);
	
	@QueryHints(value = @QueryHint(name = org.hibernate.jpa.QueryHints.HINT_CACHEABLE, value = "true"), forCounting = true)
	Page<Photo> findAll(Pageable pageable);
	
	@QueryHints(value = @QueryHint(name = org.hibernate.jpa.QueryHints.HINT_CACHEABLE, value = "true"), forCounting = true)
	Page<Photo> findByAlbumId(Long id,Pageable pageable);
}

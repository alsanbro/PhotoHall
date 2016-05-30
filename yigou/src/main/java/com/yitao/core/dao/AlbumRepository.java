/**
 * Created by zx on 2016年5月5日.
 */
package com.yitao.core.dao;

import javax.persistence.QueryHint;

import org.springframework.data.jpa.repository.QueryHints;

import com.yitao.core.model.Album;

/**
 * @author lenovo
 *
 */
public interface AlbumRepository extends HibernateBasedRepository<Album, Long> {

	@QueryHints(value = @QueryHint(name = org.hibernate.jpa.QueryHints.HINT_CACHEABLE, value = "true"), forCounting = true)
	Album findOne(Long id);
}

package com.yitao.core.dao;

import javax.persistence.QueryHint;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.QueryHints;

import com.yitao.core.model.Category;

/**
 * Created by m2mbob on 16/4/11.
 */
public interface CategoryRepository extends HibernateBasedRepository<Category, Long>{

    @QueryHints(value = @QueryHint(name = org.hibernate.jpa.QueryHints.HINT_CACHEABLE, value = "true"), forCounting = true)
    Page<Category> findByParentIsNull(Pageable pageable);

    @QueryHints(value = @QueryHint(name = org.hibernate.jpa.QueryHints.HINT_CACHEABLE, value = "true"), forCounting = true)
    Page<Category> findByParentIsNotNull(Pageable pageable);
    
    @QueryHints(value = @QueryHint(name = org.hibernate.jpa.QueryHints.HINT_CACHEABLE, value = "true"), forCounting = true)
    Category findByName(String name);
}

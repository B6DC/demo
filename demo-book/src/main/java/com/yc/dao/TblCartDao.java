package com.yc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.TblCart;

	public interface TblCartDao extends JpaRepository<TblCart, Integer> {

		List<TblCart> findBybookId(String bid);

	}	

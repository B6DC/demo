package com.yc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.TblOrders;


public interface TblOrdersDao extends JpaRepository<TblOrders, Integer> {

	}


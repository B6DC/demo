package com.yc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.TblRecord;

public interface TblRecordDao {
	public interface TblManageDao extends JpaRepository<TblRecord, Integer> {

	}
	
}

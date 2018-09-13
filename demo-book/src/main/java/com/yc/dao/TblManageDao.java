package com.yc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.yc.bean.TblManage;

/**
 * TblManage  实体类
 * Integer  主键类
 * @author Administrator
 *
 */

public interface TblManageDao extends JpaRepository<TblManage, Integer> {

}

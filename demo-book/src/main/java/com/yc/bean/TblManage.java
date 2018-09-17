package com.yc.bean;

import javax.persistence.*;

@Entity //实体类注解
@Table(name="tbl_manage") //配置表名
public class TblManage {
	
	@Id //主键注解
	@GeneratedValue(strategy=GenerationType.AUTO)//配置主键值的生成机制
	private Integer manageId;

	private String manageName;

	private String managePassword;

	private String managePhone;
	
	private String manageEmail;
	
	private String managePower;

	public Integer getManageId() {
		return manageId;
	}

	public void setManageId(Integer manageId) {
		this.manageId = manageId;
	}

	public String getManageName() {
		return manageName;
	}

	public void setManageName(String manageName) {
		this.manageName = manageName;
	}

	public String getManagePassword() {
		return managePassword;
	}

	public void setManagePassword(String managePassword) {
		this.managePassword = managePassword;
	}

	public String getManagePhone() {
		return managePhone;
	}

	public void setManagePhone(String managePhone) {
		this.managePhone = managePhone;
	}

	public String getManageEmail() {
		return manageEmail;
	}

	public void setManageEmail(String manageEmail) {
		this.manageEmail = manageEmail;
	}

	public String getManagePower() {
		return managePower;
	}

	public void setManagePower(String managePower) {
		this.managePower = managePower;
	}
	
	
}

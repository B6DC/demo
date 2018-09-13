package com.yc.bean;

import javax.persistence.*;

@Entity //实体类注解
@Table(name="tbl_manage") //配置表名
public class TblManage {
	
	@Id //主键注解
	@GeneratedValue(strategy=GenerationType.AUTO)//配置主键值的生成机制
	private Integer manage_id;
	@Column(name="manage_name")
	private String managename;
	@Column(name="manage_password")
	private String managepassword;
	@Column(name="manage_phone")
	private String managephone;
	@Column(name="manage_email")
	private String manageemail;
	@Column(name="manage_power")
	private String managepower;
	
	public Integer getManage_id() {
		return manage_id;
	}
	public void setManage_id(Integer manage_id) {
		this.manage_id = manage_id;
	}
	public String getManagename() {
		return managename;
	}
	public void setManagename(String managename) {
		this.managename = managename;
	}
	public String getManagepassword() {
		return managepassword;
	}
	public void setManagepassword(String managepassword) {
		this.managepassword = managepassword;
	}
	public String getManagephone() {
		return managephone;
	}
	public void setManagephone(String managephone) {
		this.managephone = managephone;
	}
	public String getManageemail() {
		return manageemail;
	}
	public void setManageemail(String manageemail) {
		this.manageemail = manageemail;
	}
	public String getManagepower() {
		return managepower;
	}
	public void setManagepower(String managepower) {
		this.managepower = managepower;
	}
	
	
	
	
	
	
	
	
	
}

package com.yc.bean;

import javax.persistence.*;

@Entity //实体类注解
@Table(name="tbl_manage") //配置表名
public class TblManage {
	
	@Id //主键注解
	@GeneratedValue(strategy=GenerationType.AUTO)//配置主键值的生成机制
	private Integer manage_Id;
	@Column()
	private String manage_Name;
	private String manage_Password;
	private String manage_phone;
	private String manage_email;
	private String manage_power;
	
	public Integer getManage_Id() {
		return manage_Id;
	}
	public void setManage_Id(Integer manage_Id) {
		this.manage_Id = manage_Id;
	}
	public String getManage_Name() {
		return manage_Name;
	}
	public void setManage_Name(String manage_Name) {
		this.manage_Name = manage_Name;
	}
	public String getManage_Password() {
		return manage_Password;
	}
	public void setManage_Password(String manage_Password) {
		this.manage_Password = manage_Password;
	}
	public String getManage_phone() {
		return manage_phone;
	}
	public void setManage_phone(String manage_phone) {
		this.manage_phone = manage_phone;
	}
	public String getManage_email() {
		return manage_email;
	}
	public void setManage_email(String manage_email) {
		this.manage_email = manage_email;
	}
	public String getManage_power() {
		return manage_power;
	}
	public void setManage_power(String manage_power) {
		this.manage_power = manage_power;
	}
	
	@Override
	public String toString() {
		return "TblManage [manage_Id=" + manage_Id + ", manage_Name=" + manage_Name + ", manage_Password="
				+ manage_Password + ", manage_phone=" + manage_phone + ", manage_email=" + manage_email
				+ ", manage_power=" + manage_power + "]";
	}
	
	
	
}

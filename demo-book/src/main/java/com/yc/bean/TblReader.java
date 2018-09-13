package com.yc.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity //实体类注解
@Table(name="tbl_reader") //配置表名
public class TblReader {
	
	@Id //主键注解
	@GeneratedValue(strategy=GenerationType.AUTO)//配置主键值的生成机制
	private Integer reader_id;
	@Column()
	private String reader_name;
	private String reader_password;
	private String reader_xame;
	private String reader_sex;
	private String reader_photo;
	private String reader_phone;
	private String reader_email;
	private String reader_money;
	
	public Integer getReader_id() {
		return reader_id;
	}
	public void setReader_id(Integer reader_id) {
		this.reader_id = reader_id;
	}
	public String getReader_name() {
		return reader_name;
	}
	public void setReader_name(String reader_name) {
		this.reader_name = reader_name;
	}
	public String getReader_password() {
		return reader_password;
	}
	public void setReader_password(String reader_password) {
		this.reader_password = reader_password;
	}
	public String getReader_xame() {
		return reader_xame;
	}
	public void setReader_xame(String reader_xame) {
		this.reader_xame = reader_xame;
	}
	public String getReader_sex() {
		return reader_sex;
	}
	public void setReader_sex(String reader_sex) {
		this.reader_sex = reader_sex;
	}
	public String getReader_photo() {
		return reader_photo;
	}
	public void setReader_photo(String reader_photo) {
		this.reader_photo = reader_photo;
	}
	public String getReader_phone() {
		return reader_phone;
	}
	public void setReader_phone(String reader_phone) {
		this.reader_phone = reader_phone;
	}
	public String getReader_email() {
		return reader_email;
	}
	public void setReader_email(String reader_email) {
		this.reader_email = reader_email;
	}
	public String getReader_money() {
		return reader_money;
	}
	public void setReader_money(String reader_money) {
		this.reader_money = reader_money;
	}
	

}

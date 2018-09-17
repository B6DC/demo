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
	private Integer readerId;
	private String readerName;
	private String readerPassword;
	private String readerXame;
	private String readerSex;
	private String readerPhoto;
	private String readerPhone;
	private String readerEmail;
	private String readerMoney;
	public Integer getReaderId() {
		return readerId;
	}
	public void setReaderId(Integer readerId) {
		this.readerId = readerId;
	}
	public String getReaderName() {
		return readerName;
	}
	public void setReaderName(String readerName) {
		this.readerName = readerName;
	}
	public String getReaderPassword() {
		return readerPassword;
	}
	public void setReaderPassword(String readerPassword) {
		this.readerPassword = readerPassword;
	}
	public String getReaderXame() {
		return readerXame;
	}
	public void setReaderXame(String readerXame) {
		this.readerXame = readerXame;
	}
	public String getReaderSex() {
		return readerSex;
	}
	public void setReaderSex(String readerSex) {
		this.readerSex = readerSex;
	}
	public String getReaderPhoto() {
		return readerPhoto;
	}
	public void setReaderPhoto(String readerPhoto) {
		this.readerPhoto = readerPhoto;
	}
	public String getReaderPhone() {
		return readerPhone;
	}
	public void setReaderPhone(String readerPhone) {
		this.readerPhone = readerPhone;
	}
	public String getReaderEmail() {
		return readerEmail;
	}
	public void setReaderEmail(String readerEmail) {
		this.readerEmail = readerEmail;
	}
	public String getReaderMoney() {
		return readerMoney;
	}
	public void setReaderMoney(String readerMoney) {
		this.readerMoney = readerMoney;
	}
	
	


}

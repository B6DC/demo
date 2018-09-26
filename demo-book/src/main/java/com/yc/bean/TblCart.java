package com.yc.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity //实体类注解
@Table(name="tbl_cart") //配置表名
public class TblCart {
	
	
	@Id //主键注解
	@GeneratedValue(strategy=GenerationType.AUTO)//配置主键值的生成机制
	private Integer aid;
	private String bookId;
	private String bookPhoto;
	private String bookName;
	private String bookAuthor;
	private String bookPrice;
	private String readerXame;
	private String readerPhoto;
	private Integer bookNumber;
	private String cartType;
	public Integer getAid() {
		return aid;
	}
	public void setAid(Integer aid) {
		this.aid = aid;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getBookPhoto() {
		return bookPhoto;
	}
	public void setBookPhoto(String bookPhoto) {
		this.bookPhoto = bookPhoto;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookAuthor() {
		return bookAuthor;
	}
	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}
	public String getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(String bookPrice) {
		this.bookPrice = bookPrice;
	}
	public String getReaderXame() {
		return readerXame;
	}
	public void setReaderXame(String readerXame) {
		this.readerXame = readerXame;
	}
	public String getReaderPhoto() {
		return readerPhoto;
	}
	public void setReaderPhoto(String readerPhoto) {
		this.readerPhoto = readerPhoto;
	}
	
	public Integer getBookNumber() {
		return bookNumber;
	}
	public void setBookNumber(Integer bookNumber) {
		this.bookNumber = bookNumber;
	}
	public String getCartType() {
		return cartType;
	}
	public void setCartType(String cartType) {
		this.cartType = cartType;
	}
	
	
}

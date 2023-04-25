package com.ohgu.product.model.vo;

import java.sql.Date;

public class Review {

//	REVIEW_NO	NUMBER
//	CONTENT	VARCHAR2(1000 BYTE)
//	CREATED_AT	DATE
//	FILE_NAME	VARCHAR2(200 BYTE)
//	STATUS	CHAR(1 BYTE)
//	ORDER_NO	NUMBER
//	PRODUCT_NO	NUMBER
	
	private int reviewNo;
	private String reviewContent;
	private Date createdAt;
	private String fileName;
	private String status;
	private int orderNo;
	private int productNo;
	
	public Review() { }

	public Review(int reviewNo, String reviewContent, Date createdAt, String fileName, String status, int orderNo,
			int productNo) {
		super();
		this.reviewNo = reviewNo;
		this.reviewContent = reviewContent;
		this.createdAt = createdAt;
		this.fileName = fileName;
		this.status = status;
		this.orderNo = orderNo;
		this.productNo = productNo;
	}

	
	public Review(int reviewNo, String reviewContent, Date createdAt) {
		super();
		this.reviewNo = reviewNo;
		this.reviewContent = reviewContent;
		this.createdAt = createdAt;
	}

	public Review(int reviewNo, String reviewContent, Date createdAt, String fileName) {
		super();
		this.reviewNo = reviewNo;
		this.reviewContent = reviewContent;
		this.createdAt = createdAt;
		this.fileName = fileName;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setgetCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", reviewContent=" + reviewContent + ", createdAt=" + createdAt
				+ ", fileName=" + fileName + ", status=" + status + ", orderNo=" + orderNo + ", productNo=" + productNo
				+ "]";
	}
	
	
}

package com.ohgu.board.model.vo;

import java.sql.Date;

public class Board {
	
	private int boardNo;			//	BOARD_NO	NUMBER
	private String boardTitle;	//	BOARD_TITLE	VARCHAR2(200 BYTE)
	private String boardContent;	//	BOARD_CONTENT	VARCHAR2(2000 BYTE)
	private Date createdAt;		//	CREATED_AT	DATE
	private String answer;		//	ANSWER	VARCHAR2(1000 BYTE)
	private Date updatedAt;		//	UPDATED_AT	DATE
	private String status;
	private int memberNo;		//	MEMBER_NO	NUMBER
	private int orderNo;			//	ORDER_NO	NUMBER
	private int productNo; 		// PRODUCT_NO	NUMBER
	private String memberName;
	private String productName;
	private String fileName;
	
	public Board() {}

	public Board(int boardNo, String boardTitle, String boardContent, Date createdAt, String answer, Date updatedAt,
			String status, int memberNo, int orderNo, int productNo, String memberName, String productName) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.createdAt = createdAt;
		this.answer = answer;
		this.updatedAt = updatedAt;
		this.status = status;
		this.memberNo = memberNo;
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.memberName = memberName;
		this.productName = productName;
	}
	
	

	public Board(int boardNo, String boardTitle, String boardContent, Date createdAt, String answer, Date updatedAt,
			int memberNo, int orderNo, int productNo) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.createdAt = createdAt;
		this.answer = answer;
		this.updatedAt = updatedAt;
		this.memberNo = memberNo;
		this.orderNo = orderNo;
		this.productNo = productNo;
	}

	public Board(int boardNo, int orderNo, String boardTitle, Date createdAt, String answer) {
		super();
		this.boardNo = boardNo;
		this.orderNo = orderNo;
		this.boardTitle = boardTitle;
		this.createdAt = createdAt;
		this.answer = answer;
	}
	

	public Board(int boardNo, String boardTitle, String boardContent, Date createdAt, String status, int orderNo,
			String memberName, String productName) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.createdAt = createdAt;
		this.status = status;
		this.orderNo = orderNo;
		this.memberName = memberName;
		this.productName = productName;
	}
	
	

	
	
	public Board(int boardNo, String boardTitle, String boardContent, Date createdAt, String answer, Date updatedAt,
			String status, int memberNo, int orderNo, int productNo, String memberName, String productName,
			String fileName) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.createdAt = createdAt;
		this.answer = answer;
		this.updatedAt = updatedAt;
		this.status = status;
		this.memberNo = memberNo;
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.memberName = memberName;
		this.productName = productName;
		this.fileName = fileName;
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

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", createdAt=" + createdAt + ", answer=" + answer + ", updatedAt=" + updatedAt + ", status=" + status
				+ ", memberNo=" + memberNo + ", orderNo=" + orderNo + ", productNo=" + productNo + ", memberName="
				+ memberName + ", productName=" + productName + "]";
	}

}

package com.kh.admin.model.vo;

import java.sql.Date;

public class AdminQna {
	private int boardNo;
	private String boardWriter;
	private String category;
	private int categoryNo;
	private String boardType;
	private String boardTitle;
	private String boardContent;
	private Date createDate;
	private String answerStatus;
	private String status;
	private String categoryName;
	private String userId;
	private int rnum;
	private String email;
	private String phone;
	
	public AdminQna() {
		super();
	}
	
	public AdminQna(int boardNo, String boardWriter, String category, int categoryNo, String boardType,
			String boardTitle, String boardContent, Date createDate, String answerStatus, String status,
			String categoryName, String userId, int rnum) {
		super();
		this.boardNo = boardNo;
		this.boardWriter = boardWriter;
		this.category = category;
		this.categoryNo = categoryNo;
		this.boardType = boardType;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.createDate = createDate;
		this.answerStatus = answerStatus;
		this.status = status;
		this.categoryName = categoryName;
		this.userId = userId;
		this.rnum = rnum;
	}

	public AdminQna(int boardNo, String boardWriter, String category, int categoryNo, String boardType,
			String boardTitle, String boardContent, Date createDate, String answerStatus, String status,
			String categoryName, String userId, int rnum, String email, String phone) {
		super();
		this.boardNo = boardNo;
		this.boardWriter = boardWriter;
		this.category = category;
		this.categoryNo = categoryNo;
		this.boardType = boardType;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.createDate = createDate;
		this.answerStatus = answerStatus;
		this.status = status;
		this.categoryName = categoryName;
		this.userId = userId;
		this.rnum = rnum;
		this.email = email;
		this.phone = phone;
	}

	public AdminQna(int boardNo, String boardWriter, String category, int categoryNo, String boardType,
			String boardTitle, String boardContent, Date createDate, String answerStatus, String status,
			String categoryName, String userId) {
		super();
		this.boardNo = boardNo;
		this.boardWriter = boardWriter;
		this.category = category;
		this.categoryNo = categoryNo;
		this.boardType = boardType;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.createDate = createDate;
		this.answerStatus = answerStatus;
		this.status = status;
		this.categoryName = categoryName;
		this.userId = userId;
	}
	public AdminQna(int boardNo, String categoryName, String boardTitle, String boardContent, String userId,
			Date createDate, int rnum) {
		super();
		this.boardNo = boardNo;
		this.categoryName = categoryName;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.userId = userId;
		this.createDate = createDate;
		this.rnum = rnum;
	}
	
	public AdminQna(int boardNo, String categoryName, String boardTitle, String boardContent, String userId,
			Date createDate, String email, String phone, int rnum) {
		super();
		this.boardNo = boardNo;
		this.categoryName = categoryName;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.userId = userId;
		this.createDate = createDate;
		this.email = email;
		this.phone=phone;
		this.rnum = rnum;
	}
	public AdminQna(int boardNo, String boardTitle, String answerStatus) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.answerStatus = answerStatus;
	}
	
	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
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
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getAnswerStatus() {
		return answerStatus;
	}
	public void setAnswerStatus(String answerStatus) {
		this.answerStatus = answerStatus;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "AdminQna [boardNo=" + boardNo + ", boardWriter=" + boardWriter + ", category=" + category
				+ ", categoryNo=" + categoryNo + ", boardType=" + boardType + ", boardTitle=" + boardTitle
				+ ", boardContent=" + boardContent + ", createDate=" + createDate + ", answerStatus=" + answerStatus
				+ ", status=" + status + ", categoryName=" + categoryName + ", userId=" + userId + "]";
	}
}

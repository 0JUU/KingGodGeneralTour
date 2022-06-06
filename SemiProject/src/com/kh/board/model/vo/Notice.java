package com.kh.board.model.vo;

import java.sql.Date;

public class Notice {
	private int noticeNo;
	private int caterogyNo;
	private String caterogyName;
	private String category;
	private String noticeTitle;
	private String noticeContent;
	private int noticeWriter;
	private Date createDate;
	private String status;
	
	public Notice() {
		super();
	}

	public Notice(int noticeNo, int caterogyNo, String caterogyName, String category, String noticeTitle,
			String noticeContent, int noticeWriter, Date createDate, String status) {
		super();
		this.noticeNo = noticeNo;
		this.caterogyNo = caterogyNo;
		this.caterogyName = caterogyName;
		this.category = category;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeWriter = noticeWriter;
		this.createDate = createDate;
		this.status = status;
	}

	public Notice(int noticeNo, int caterogyNo, String caterogyName, String noticeTitle, String noticeContent,
			int noticeWriter, Date createDate, String status) {
		super();
		this.noticeNo = noticeNo;
		this.caterogyNo = caterogyNo;
		this.caterogyName = caterogyName;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.noticeWriter = noticeWriter;
		this.createDate = createDate;
		this.status = status;
	}
	

	public Notice(int noticeNo, String caterogyName, String noticeTitle, String noticeContent, Date createDate) {
		super();
		this.noticeNo = noticeNo;
		this.caterogyName = caterogyName;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
		this.createDate = createDate;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public Notice(int noticeNo, String caterogyName, String noticeTitle, Date createDate) {
		super();
		this.noticeNo = noticeNo;
		this.caterogyName = caterogyName;
		this.noticeTitle = noticeTitle;
		this.createDate = createDate;
	}

	public Notice(int noticeNo, String caterogyName, String noticeTitle, String noticeContent) {
		super();
		this.noticeNo = noticeNo;
		this.caterogyName = caterogyName;
		this.noticeTitle = noticeTitle;
		this.noticeContent = noticeContent;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getCaterogyNo() {
		return caterogyNo;
	}

	public void setCaterogyNo(int caterogyNo) {
		this.caterogyNo = caterogyNo;
	}

	public String getCaterogyName() {
		return caterogyName;
	}

	public void setCaterogyName(String caterogyName) {
		this.caterogyName = caterogyName;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public int getNoticeWriter() {
		return noticeWriter;
	}

	public void setNoticeWriter(int noticeWriter) {
		this.noticeWriter = noticeWriter;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", caterogyNo=" + caterogyNo + ", caterogyName=" + caterogyName
				+ ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent + ", noticeWriter=" + noticeWriter
				+ ", createDate=" + createDate + ", status=" + status + "]";
	}
	
}

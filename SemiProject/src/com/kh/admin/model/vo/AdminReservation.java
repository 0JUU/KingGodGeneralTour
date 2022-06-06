package com.kh.admin.model.vo;

import java.sql.Date;

public class AdminReservation {
	private int enrollNo;//ENROLL_NO NUMBER PRIMARY KEY,
	private String userName;
	private String intDomId;
    private int bookingNo;//BOOKING_NO NUMBER NOT NULL,
    private Date reservationDate;
    private String flightNo;//FLIGHT_NO VARCHAR2(15) NOT NULL,
    private String depCity;
    private String arrivalCity;
    private String depDate;//DEP_DATE VARCHAR2(15) NOT NULL
    private String arrivalDate;
    private String depCode;//DEP_CODE VARCHAR2(10) NOT NULL,
    
	public AdminReservation() {
		super();
	}

	public AdminReservation(int enrollNo, String userName, String intDomId, int bookingNo, Date reservationDate,
			String flightNo) {
		super();
		this.enrollNo = enrollNo;
		this.userName = userName;
		this.intDomId = intDomId;
		this.bookingNo = bookingNo;
		this.reservationDate = reservationDate;
		this.flightNo = flightNo;
	}

	public int getEnrollNo() {
		return enrollNo;
	}
	public void setEnrollNo(int enrollNo) {
		this.enrollNo = enrollNo;
	}
	public String getIntDomId() {
		return intDomId;
	}
	public void setIntDomId(String intDomId) {
		this.intDomId = intDomId;
	}
	public int getBookingNo() {
		return bookingNo;
	}
	public void setBookingNo(int bookingNo) {
		this.bookingNo = bookingNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}
	public String getFlightNo() {
		return flightNo;
	}
	public void setFlightNo(String flightNo) {
		this.flightNo = flightNo;
	}
	public String getDepCity() {
		return depCity;
	}
	public void setDepCity(String depCity) {
		this.depCity = depCity;
	}
	public String getArrivalCity() {
		return arrivalCity;
	}
	public void setArrivalCity(String arrivalCity) {
		this.arrivalCity = arrivalCity;
	}
	public String getDepDate() {
		return depDate;
	}
	public void setDepDate(String depDate) {
		this.depDate = depDate;
	}
	public String getArrivalDate() {
		return arrivalDate;
	}
	public void setArrivalDate(String arrivalDate) {
		this.arrivalDate = arrivalDate;
	}
	public String getDepCode() {
		return depCode;
	}
	public void setDepCode(String depCode) {
		this.depCode = depCode;
	}
	@Override
	public String toString() {
		return "AdminReservation [enrollNo=" + enrollNo + ", intDomId=" + intDomId + ", bookingNo=" + bookingNo
				+ ", userName=" + userName + ", reservationDate=" + reservationDate + ", flightNo=" + flightNo
				+ ", depCity=" + depCity + ", arrivalCity=" + arrivalCity + ", depDate=" + depDate + ", arrivalDate="
				+ arrivalDate + ", depCode=" + depCode + "]";
	}
}

package com.team.app.myPage.vo;

//LOCATION_NAME VARCHAR(2000) PRIMARY KEY,
//RECIPIENT VARCHAR(2000),
//USER_PHONE_NO VARCHAR(2000),
//USER_ADDRESS VARCHAR2(1000),
//USER_ADDRESS_DETAIL VARCHAR2(1000)

public class MyPageAddressVO {
	private int address_no;
	private String location_name;
	private String recipient;
	private String user_phone_no;
	private String user_zipcode;
	private String user_address;
	private String user_address_detail;
	private String user_address_etc;
	private String user_id;
	
	

	public MyPageAddressVO() {;}

	public int getAddress_no() {
		return address_no;
	}
	
	
	public void setAddress_no(int address_no) {
		this.address_no = address_no;
	}
	

	public String getLocation_name() {
		return location_name;
	}


	public void setLocation_name(String location_name) {
		this.location_name = location_name;
	}


	public String getRecipient() {
		return recipient;
	}


	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}


	public String getUser_phone_no() {
		return user_phone_no;
	}


	public void setUser_phone_no(String user_phone_no) {
		this.user_phone_no = user_phone_no;
	}


	public String getUser_zipcode() {
		return user_zipcode;
	}


	public void setUser_zipcode(String user_zipcode) {
		this.user_zipcode = user_zipcode;
	}


	public String getUser_address() {
		return user_address;
	}


	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}


	public String getUser_address_detail() {
		return user_address_detail;
	}


	public void setUser_address_detail(String user_address_detail) {
		this.user_address_detail = user_address_detail;
	}


	public String getUser_address_etc() {
		return user_address_etc;
	}


	public void setUser_address_etc(String user_address_etc) {
		this.user_address_etc = user_address_etc;
	}
	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
}

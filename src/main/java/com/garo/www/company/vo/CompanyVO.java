package com.garo.www.company.vo;

import org.springframework.stereotype.Component;

@Component("companyVO")
public class CompanyVO {
	private String cmp_id;
	private String name;
	private String pwd;
	private String zipcode;
	private String addr;
	private String addr_detail;
	private String office_no1;
	private String office_no2;
	private String office_no3;
	private String cmp_email;
	/*
	 * private int food; private int move; private int house;
	 */
	private String service; 
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	private String site;
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	public String getCmp_id() {
		return cmp_id;
	}
	public void setCmp_id(String cmp_id) {
		this.cmp_id = cmp_id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddr_detail() {
		return addr_detail;
	}
	public void setAddr_detail(String addr_detail) {
		this.addr_detail = addr_detail;
	}
	public String getOffice_no1() {
		return office_no1;
	}
	public void setOffice_no1(String office_no1) {
		this.office_no1 = office_no1;
	}
	public String getOffice_no2() {
		return office_no2;
	}
	public void setOffice_no2(String office_no2) {
		this.office_no2 = office_no2;
	}
	public String getOffice_no3() {
		return office_no3;
	}
	public void setOffice_no3(String office_no3) {
		this.office_no3 = office_no3;
	}
	public String getCmp_email() {
		return cmp_email;
	}
	public void setCmp_email(String cmp_email) {
		this.cmp_email = cmp_email;
	}
	/*
	 * public int getFood() { return food; } public void setFood(int food) {
	 * this.food = food; } public int getMove() { return move; } public void
	 * setMove(int move) { this.move = move; } public int getHouse() { return house;
	 * } public void setHouse(int house) { this.house = house; }
	 */
	
}
	
	


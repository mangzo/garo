package com.garo.www.matching.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("matchingVO")
public class MatchingVO {
	
	private int mch_code; //매칭 번호
	private String mem_email; //고객 이메일
	private String cmp_id; //회사명 - ★
	private Date mch_date; //매칭 원하는 날짜 - ★
	private String state; //매칭 현황 ex)대기중,승낙,거부 - ★
	private String cus_name; //고객 이름 - ★
	private Date service_date; 
	private String service_time; //서비스 몇 시에?
	private String service_loc; //고객 지역
	private String etc; //기타 추가사항
	private String service;
	public String getService() {
		return service;
	}
	public void setService(String service) {
		this.service = service;
	}
	public int getMch_code() {
		return mch_code;
	}
	public void setMch_code(int mch_code) {
		this.mch_code = mch_code;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getCmp_id() {
		return cmp_id;
	}
	public void setCmp_id(String cmp_id) {
		this.cmp_id = cmp_id;
	}
	public Date getMch_date() {
		return mch_date;
	}
	public void setMch_date(Date mch_date) {
		this.mch_date = mch_date;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCus_name() {
		return cus_name;
	}
	public void setCus_name(String cus_name) {
		this.cus_name = cus_name;
	}
	public Date getService_date() {
		return service_date;
	}
	public void setService_date(Date service_date) {
		this.service_date = service_date;
	}
	public String getService_time() {
		return service_time;
	}
	public void setService_time(String service_time) {
		this.service_time = service_time;
	}
	public String getService_loc() {
		return service_loc;
	}
	public void setService_loc(String service_loc) {
		this.service_loc = service_loc;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public Date getComp_date() {
		return comp_date;
	}
	public void setComp_date(Date comp_date) {
		this.comp_date = comp_date;
	}
	private Date comp_date; //뭔지 모르고 들어가지도 않음~
	
	

}

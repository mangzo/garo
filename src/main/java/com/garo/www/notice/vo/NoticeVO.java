package com.garo.www.notice.vo;

import java.util.Date;
import org.springframework.stereotype.Component;

@Component("noticeVO")
public class NoticeVO {
	private int ntc_seq; //뭔가 중요한 번호
	private String ntc_name; 
	private String ntc_title;
	private String ntc_content;
	private int ntc_hit; //조회수
	private Date ntc_date;
	private String ntc_attach; //첨부파일
	
	public int getNtc_seq() {
		return ntc_seq;
	}

	public void setNtc_seq(int ntc_seq) {
		this.ntc_seq = ntc_seq;
	}

	public String getNtc_name() {
		return ntc_name;
	}

	public void setNtc_name(String ntc_name) {
		this.ntc_name = ntc_name;
	}

	public String getNtc_title() {
		return ntc_title;
	}

	public void setNtc_title(String ntc_title) {
		this.ntc_title = ntc_title;
	}

	public String getNtc_content() {
		return ntc_content;
	}

	public void setNtc_content(String ntc_content) {
		this.ntc_content = ntc_content;
	}

	public int getNtc_hit() {
		return ntc_hit;
	}

	public void setNtc_hit(int ntc_hit) {
		this.ntc_hit = ntc_hit;
	}

	public Date getNtc_date() {
		return ntc_date;
	}

	public void setNtc_date(Date ntc_date) {
		this.ntc_date = ntc_date;
	}

	public String getNtc_attach() {
		return ntc_attach;
	}

	public void setNtc_attach(String ntc_attach) {
		this.ntc_attach = ntc_attach;
	}

	

}

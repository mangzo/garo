package com.garo.www.matching.vo;

import java.util.Date;
import org.springframework.stereotype.Component;

@Component("matchingVO")
public class MatchingVO {
	
	private int mch_code; //매칭 번호
	private String mem_email; //고객 이메일
	private int cmp_id; //회사명 - ★
	private Date mch_date; //매칭 원하는 날짜 - ★
	private String state; //매칭 현황 ex)대기중,승낙,거부 - ★
	private String cus_name; //고객 이름 - ★
	private Date service_date; 
	private String service_time; //서비스 몇 시에?
	private String service_loc; //고객 지역
	private String etc; //기타 추가사항
	private Date comp_date; //뭔지 모르고 들어가지도 않음~
	
	

}

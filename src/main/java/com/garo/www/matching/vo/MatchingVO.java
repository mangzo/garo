package com.garo.www.matching.vo;

import java.util.Date;
import org.springframework.stereotype.Component;

@Component("matchingVO")
public class MatchingVO {
	
	private int mch_code; //��Ī ��ȣ
	private String mem_email; //�� �̸���
	private int cmp_id; //ȸ��� - ��
	private Date mch_date; //��Ī ���ϴ� ��¥ - ��
	private String state; //��Ī ��Ȳ ex)�����,�³�,�ź� - ��
	private String cus_name; //�� �̸� - ��
	private Date service_date; 
	private String service_time; //���� �� �ÿ�?
	private String service_loc; //�� ����
	private String etc; //��Ÿ �߰�����
	private Date comp_date; //���� �𸣰� ������ ����~
	
	

}

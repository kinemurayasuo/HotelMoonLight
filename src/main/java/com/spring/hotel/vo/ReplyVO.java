package com.spring.hotel.vo;

import lombok.Data;

@Data
public class ReplyVO {
	private int replyNum;			
	private String replyContent;	
	private String replyDate;		
	private int listNum;			
	private String memberId;	
	private String memberNm;		
}

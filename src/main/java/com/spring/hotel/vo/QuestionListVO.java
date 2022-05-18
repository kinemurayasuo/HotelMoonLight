package com.spring.hotel.vo;

import lombok.Data;

@Data
public class QuestionListVO 
{
	private int listNum;
	private String memberId;
	private String memberNm;
	private String listTitle;
	private String listContent;
	private String listDate;
	private String originalFilename;
	private String savedFilename;
}

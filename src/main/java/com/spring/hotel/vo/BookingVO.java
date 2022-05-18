package com.spring.hotel.vo;

import lombok.Data;

@Data
public class BookingVO {
	private int bookingNum;		
	private String memberId;
	private String bookingStart;			
	private String bookingEnd;	
	private int bookingPrice;		
	private int bookingStatus;	
	private int adult;			
	private int child;			
	private String roomType;
	private String bookingDate;	

}

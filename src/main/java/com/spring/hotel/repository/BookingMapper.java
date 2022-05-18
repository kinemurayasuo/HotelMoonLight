package com.spring.hotel.repository;

import java.util.ArrayList;

import com.spring.hotel.vo.BookingVO;
import com.spring.hotel.vo.RoomVO;

public interface BookingMapper {

	int roomBooking(BookingVO booking); // 예약

	int roomStatusUp(String roomType); // 방 개수 증가

	int roomStatusDown(String roomType); // 방 개수 감소

	RoomVO readRoom(String roomType); // 방 정보 조회

	ArrayList<BookingVO> selectMyList(String memberId); // 내 예약 조회

	int cancleBooking(BookingVO booking); // 예약 취소

	int deleteMemberBooking(String memberId); // 회원탈퇴 관련 예약 삭제

}

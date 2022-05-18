package com.spring.hotel.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.hotel.repository.BookingRepository;
import com.spring.hotel.vo.BookingVO;
import com.spring.hotel.vo.RoomVO;

@Service
public class BookingService {

	@Autowired
	private BookingRepository repository;

	@Autowired
	private HttpSession session;

	// 예약
	public String roomBooking(BookingVO booking, String memberId) {
		booking.setMemberId(memberId);
		int result = repository.roomBooking(booking);

		String path;
		if (result == 0) {
			path = "/booking/roomBooking";
		} else {
			path = "redirect:/";
		}

		return path;
	}

	// 방 개수 증가
	public boolean roomStatusUp(String roomType) {
		return repository.roomStatusUp(roomType) > 0;
	}

	// 방 개수 감소
	public boolean roomStatusDown(String roomType) {
		return repository.roomStatusDown(roomType) > 0;
	}

	// 방 정보 조회
	public RoomVO readRoom(String roomType) {
		return repository.readRoom(roomType);
	}

	// 내 예약 조회
	public ArrayList<BookingVO> selectMyList(String memberId) {
		return repository.selectMyList(memberId);
	}

	// 예약 취소
	public boolean cancleBooking(String memberId, int bookingNum) {
		BookingVO booking = new BookingVO();
		booking.setMemberId(memberId);
		booking.setBookingNum(bookingNum);
		return repository.cancleBooking(booking) > 0;
	}

	// public String dayCheck(String bookingStart, String bookingEnd) {
	// BookingVO booking = new BookingVO();
	// booking.setBookingStart(bookingStart);
	// booking.setBookingEnd(bookingEnd);
	// return repository.dayCheck(booking);
	// }

}

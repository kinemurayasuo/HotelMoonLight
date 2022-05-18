package com.spring.hotel.controller;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.hotel.service.BookingService;
import com.spring.hotel.vo.BookingVO;
import com.spring.hotel.vo.RoomVO;

@Controller
@RequestMapping(value = "/booking")
public class BookingController {

	private static final Logger logger = LoggerFactory.getLogger(BookingController.class);
	// 뭔가를 수정했어요
	@Autowired
	private BookingService service;

	@RequestMapping(value = "/booking", method = RequestMethod.GET)
	public String booking() {
		logger.info("booking 메소드 실행(GET)ㅋㅋㅋㅋ");

		return "booking/booking";
	}

	// 예약 1
	@RequestMapping(value = "/roomBooking", method = RequestMethod.POST)
	public String booking(BookingVO booking, HttpSession session, Model model) {
		logger.info("roomBooking 메소드 실행(POST)");
		model.addAttribute("booking", booking);

		booking.setRoomType("Classic");
		RoomVO Classic = service.readRoom(booking.getRoomType());
		if (Classic.getRoomStatus() == 0) {
			model.addAttribute("impossible1", "impossible1");
		}

		booking.setRoomType("Deluxe");
		RoomVO Deluxe = service.readRoom(booking.getRoomType());
		if (Deluxe.getRoomStatus() == 0) {
			model.addAttribute("impossible2", "impossible2");
		}

		booking.setRoomType("Superior");
		RoomVO Superior = service.readRoom(booking.getRoomType());
		if (Superior.getRoomStatus() == 0) {
			model.addAttribute("impossible3", "impossible3");
		}
		booking.setRoomType("Premier");
		RoomVO Premier = service.readRoom(booking.getRoomType());
		if (Premier.getRoomStatus() == 0) {
			model.addAttribute("impossible4", "impossible4");
		}

		booking.setRoomType("Deluxe_Suite");
		RoomVO DeluxeSuite = service.readRoom(booking.getRoomType());
		if (DeluxeSuite.getRoomStatus() == 0) {
			model.addAttribute("impossible5", "impossible5");
		}

		booking.setRoomType("Family_Suite");
		RoomVO FamilySuite = service.readRoom(booking.getRoomType());
		if (FamilySuite.getRoomStatus() == 0) {
			model.addAttribute("impossible6", "impossible6");
		}

		return "booking/roomBooking";
	}

	// 예약 2
	@RequestMapping(value = "/completeBooking", method = RequestMethod.POST)
	public String roomBooking(BookingVO booking, HttpSession session, Model model) {
		logger.info("completeBooking(POST)메소드 실행");

		String memberId = (String) session.getAttribute("memberId");
		String path = service.roomBooking(booking, memberId);
		boolean result = service.roomStatusDown(booking.getRoomType());

		if (result) {
			logger.info("예약 성공");
		} else {
			logger.info("예약 실패");
		}
		return path;
	}

	// 내 예약 조회
	@RequestMapping(value = "/bookingList", method = RequestMethod.GET)
	public String bookingList(Model model, HttpSession session) {
		logger.info("questionList 메소드 실행(GET)");

		String memberId = (String) session.getAttribute("memberId");
		ArrayList<BookingVO> bookingList = service.selectMyList(memberId);
		model.addAttribute("bookingList", bookingList);

		return "booking/bookingList";
	}

	// 예약 취소
	@RequestMapping(value = "/cancleBooking", method = RequestMethod.POST)
	public String cancleBooking(String memberId, String roomType, int bookingNum) {
		logger.info("cancleBooking(POST)실행");

		boolean result1 = service.cancleBooking(memberId, bookingNum);
		boolean result2 = service.roomStatusUp(roomType);

		if (result1) {
			logger.info("예약 취소 완료");
		} else {
			logger.info("예약 취소 실패");
		}
		if (result2) {
			logger.info("방 개수 증가 성공");
		} else {
			logger.info("방 개수 증가 실패");
		}

		return "redirect:/booking/bookingList";
	}

}

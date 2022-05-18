package com.spring.hotel.repository;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hotel.vo.BookingVO;
import com.spring.hotel.vo.QuestionListVO;
import com.spring.hotel.vo.RoomVO;

@Repository
public class BookingRepository {

	@Autowired
	private SqlSession session;

	public int roomBooking(BookingVO booking) {
		int result = 0;
		BookingMapper mapper = null;

		try {
			mapper = session.getMapper(BookingMapper.class);
			result = mapper.roomBooking(booking);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public int roomStatusUp(String roomType) {
		int result = 0;
		BookingMapper mapper = null;
		try {
			mapper = session.getMapper(BookingMapper.class);
			result = mapper.roomStatusUp(roomType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int roomStatusDown(String roomType) {
		int result = 0;
		BookingMapper mapper = null;
		try {
			mapper = session.getMapper(BookingMapper.class);
			result = mapper.roomStatusDown(roomType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public RoomVO readRoom(String roomType) {
		RoomVO result = null;
		BookingMapper mapper = null;
		try {
			mapper = session.getMapper(BookingMapper.class);
			result = mapper.readRoom(roomType);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public ArrayList<BookingVO> selectMyList(String memberId) {
		ArrayList<BookingVO> result = null;
		BookingMapper mapper = null;
		try {
			mapper = session.getMapper(BookingMapper.class);
			result = mapper.selectMyList(memberId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int cancleBooking(BookingVO booking) {
		int result = 0;
		BookingMapper mapper = null;
		try {
			mapper = session.getMapper(BookingMapper.class);
			result = mapper.cancleBooking(booking);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// public String dayCheck(BookingVO booking) {
	// String result = null;
	// BookingMapper mapper = null;
	//
	// try {
	// mapper= session.getMapper(BookingMapper.class);
	// result = mapper.dayCheck(booking);
	// } catch (Exception e) {
	// e.printStackTrace();
	// }
	// return result;
	// }

}

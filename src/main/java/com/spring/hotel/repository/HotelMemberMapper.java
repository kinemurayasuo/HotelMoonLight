package com.spring.hotel.repository;

import com.spring.hotel.vo.HotelMemberVO;

public interface HotelMemberMapper {

	int join(HotelMemberVO Member);						// 회원가입

	String selectMember(HotelMemberVO loginMember);		// 로그인

	String idChk(String idChk);							// ID 중복확인

	int updateMember(HotelMemberVO updateMember);		// 회원정보 수정

	String confirmPw(HotelMemberVO confirmMember);		// 회원 정보 수정 관련

	HotelMemberVO memberFind(String memberEmail);		// ID/PW 찾기

	int deleteMember(HotelMemberVO deleteMember);		// 회원탈퇴

	String selectMemberPw(String memberId);				// 회원탈퇴 비밀번호 확인

}

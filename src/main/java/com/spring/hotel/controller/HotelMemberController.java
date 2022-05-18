package com.spring.hotel.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.hotel.service.HotelMemberService;
import com.spring.hotel.vo.BookingVO;
import com.spring.hotel.vo.HotelMemberVO;

@Controller
@RequestMapping(value = "/member")
public class HotelMemberController {

	private static final Logger logger = LoggerFactory.getLogger(HotelMemberController.class);

	@Autowired
	private HotelMemberService service;

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String join() {
		logger.info("join(GET)메소드 실행");

		return "member/join";
	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(HotelMemberVO Member) {
		logger.info("join(POST)메소드 실행");
		logger.info("Member : {}", Member);
		String path = service.join(Member);

		logger.info("현재 등록된 사용자 정보: {}", Member);

		return path;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		logger.info("login 메소드 실행(GET)");

		return "member/login";
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpSession session, Model model, String memberId, String memberPw) {
		logger.info("login 메소드 실행(POST)");

		logger.info("id: {}", memberId);
		logger.info("password: {}", memberPw);

		String memberNm = service.selectMember(memberId, memberPw);
		logger.info("memberId: {}", memberId);
		logger.info("memberNm: {}", memberNm);

		String returnUrl = null;
		if (memberNm == null) {
			logger.info("로그인 실패");
			model.addAttribute("error1", "아이디 또는 비밀번호가 잘못 입력 되었습니다.");
			model.addAttribute("error2", "아이디와 비밀번호를 정확히 입력해 주세요.");
			returnUrl = "member/login";
		} else {
			logger.info("로그인 성공");
			session.setAttribute("memberId", memberId);
			session.setAttribute("memberNm", memberNm);
			returnUrl = "redirect:/";
		}
		return returnUrl;
	}

	// 로그아웃
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		logger.info("logout 메소드 실행(GET)");
		session.invalidate();
		return "redirect:/";
	}

	// ID 중복검사
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.GET)
	public String idChk(String idChk) {
		logger.info("idChk 메서드 실행 (GET).");
		String memberID = service.idchk(idChk);
		if (memberID == null) {
			logger.info("회원 가입 가능.");

			return "available";
		} else {
			logger.info("회원 가입 불가.");

			return null;
		}
	}

	// 회원정보 페이지 불러오기
	@RequestMapping(value = "/memberInfo", method = RequestMethod.GET)
	public String memberInfo(HttpSession session, Model model) {
		logger.info("memberInfo 메소드 실행(GET)");

		String memberId = (String) session.getAttribute("memberId");

		String memberPwChk = service.selectMemberPw(memberId);
		logger.info("memberPwChk : {}", memberPwChk);
		model.addAttribute("memberPwChk", memberPwChk);
		return "member/memberInfo";
	}

	// 회원정보 수정 관련 메소드
	@RequestMapping(value = "/memberInfo", method = RequestMethod.POST)
	public String memberInfo(String memberNm, String preMemberPw, String memberPw, String memberEmail1,
			String email, String memberEmail2, String memberTel, HttpSession session, Model model) {
		logger.info("memberInfo 메소드 실행(POST)");

		String memberId = (String) session.getAttribute("memberId");
		String memberEmail = "";
		if (memberEmail2 == null) {
			memberEmail = memberEmail1 + "@" + email;
		} else {
			memberEmail = memberEmail1 + "@" + memberEmail2;
		}

		memberNm = service.confirmPw(memberId, preMemberPw);

		if (memberNm != null) {
			logger.info("회원정보 일치");

			int result = service.updateMember(memberId, memberPw, memberNm, memberEmail, memberTel);

			if (result != 0) {
				logger.info("회원정보 수정 성공");

			} else {
				logger.info("회원정보 수정 실패");

			}
		} else {
			logger.info("회원정보 불일치");
		}

		return "home";
	}

	// 회원탈퇴 관련 메소드
	@RequestMapping(value = "/memberDelete", method = RequestMethod.GET)
	public String memberDelete(String memberPw, String memberId, HttpSession session, Model model) {
		logger.info("회원탈퇴 메소드 실행(GET)");

		memberId = (String) session.getAttribute("memberId");

		boolean result1 = service.deleteMemberReply(memberId);
		if (result1) {
			logger.info("회원탈퇴 댓글 삭제 성공");
		} else {
			logger.info("회원탈퇴 댓글 삭제 실패");
		}

		boolean result2 = service.deleteMemberBooking(memberId);
		if (result2) {
			logger.info("회원탈퇴 예약 삭제 성공");
		} else {
			logger.info("회원탈퇴 예약 삭제 실패");
		}

		boolean result4 = service.deleteMemberQuestion(memberId);
		if (result4) {
			logger.info("회원탈퇴 게시글 삭제 성공");
		} else {
			logger.info("회원탈퇴 게시글 삭제 실패");
		}

		int fin = service.deleteMember(memberId, memberPw);

		if (fin != 0) {
			logger.info("회원탈퇴 성공");
			session.invalidate();

		} else {
			logger.info("회원탈퇴 실패");

		}
		return "redirect:/";
	}

	// ID/PW 찾기
	@RequestMapping(value = "/memberFind", method = RequestMethod.GET)
	public String memberFind() {
		return "member/memberFind";
	}

	@RequestMapping(value = "/memberFind", method = RequestMethod.POST)
	public String memberFind(String memberEmail, Model model) {
		HotelMemberVO memberFind = service.memberFind(memberEmail);
		if (memberFind == null) {
			model.addAttribute("error", "이메일을 정확히 입력해 주세요.");
		} else {
			model.addAttribute("memberFind", memberFind);
		}
		return "member/memberFind";
	}
}

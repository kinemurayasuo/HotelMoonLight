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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.spring.hotel.service.QuestionListService;
import com.spring.hotel.util.FileService;
import com.spring.hotel.util.PageNavigator;
import com.spring.hotel.vo.QuestionListVO;
import com.spring.hotel.vo.ReplyVO;

@Controller
@RequestMapping(value = "/question")
public class QuestionListController {
	private static final Logger logger = LoggerFactory.getLogger(QuestionListController.class);
	private static final String UPLOAD_PATH = "C:\\Users\\user\\Documents\\Hotel01\\Upload Files";
	private static final int COUNT_PER_PAGE = 10;
	private static final int PAGE_PER_GROUP = 5;

	@Autowired
	private QuestionListService service;

	// 게시글 가져오기
	@RequestMapping(value = "/questionList", method = RequestMethod.GET)
	public String questionList(@RequestParam(defaultValue = "1") int currentPage, Model model) {
		logger.info("boardList 메소드 실행(GET)");

		int totalRecordsCount = service.getTotalRecordsCount();

		PageNavigator navi = new PageNavigator(COUNT_PER_PAGE, PAGE_PER_GROUP, currentPage, totalRecordsCount);
		model.addAttribute("navi", navi);

		ArrayList<QuestionListVO> questionList = service.getQuestionList(navi.getStartRecord(), COUNT_PER_PAGE);
		model.addAttribute("questionList", questionList);

		return "question/questionList";
	}

	@RequestMapping(value = "/searchQuestion", method = RequestMethod.GET)
	public String searchQuestion(@RequestParam(defaultValue = "1") int currentPage, String searchType,
			String searchWord, Model model) {
		logger.info("searchBoard 메소드 실행(GET)");
		int totalSearchRecordsCount = service.getTotalSearchRecordsCount(searchType, searchWord);
		logger.info("totalSearchRecordsCount : {}", totalSearchRecordsCount);

		PageNavigator navi = new PageNavigator(COUNT_PER_PAGE, PAGE_PER_GROUP, currentPage, totalSearchRecordsCount);
		model.addAttribute("navi", navi);
		ArrayList<QuestionListVO> questionList = service.searchQuestion(navi.getStartRecord(), COUNT_PER_PAGE,
				searchType, searchWord);
		logger.info("questionList : {}", questionList);

		model.addAttribute("questionList", questionList);

		return "question/questionList";
	}

	// 글 쓰기 페이지 이동
	@RequestMapping(value = "/questionListWrite", method = RequestMethod.GET)
	public String questionListWrite(Model model, HttpSession session) {
		logger.info("questionListWrite 메소드 실행(GET)");

		String memberNm = (String) session.getAttribute("memberNm");
		model.addAttribute("memberNm", memberNm);

		return "question/questionListWrite";
	}

	// 글 쓰기
	@RequestMapping(value = "/questionListWrite", method = RequestMethod.POST)
	public String questionListWrite(HttpSession session, @RequestParam("uploadFile") MultipartFile mfile,
			String listTitle, String listContent) {
		logger.info("questionListWrite 메소드 실행(POST)");
		String memberId = (String) session.getAttribute("memberId");
		String memberNm = (String) session.getAttribute("memberNm");

		String savedFileName = FileService.saveFile(mfile, UPLOAD_PATH);

		boolean result = service.insertList(memberId, memberNm, listTitle, listContent, mfile.getOriginalFilename(),
				savedFileName);

		String returnUrl = null;
		if (result) {
			logger.info("게시글 작성 성공");
			returnUrl = "redirect:/question/questionList";
		} else {
			logger.info("게시글 작성 실패");
			returnUrl = "question/questionListWrite";
		}
		return returnUrl;
	}

	// 글 읽기
	@RequestMapping(value = "/question", method = RequestMethod.GET)
	public String question(Model model, int listNum, HttpSession session) {
		logger.info("question 메소드 실행(GET)");
		String memberId = (String) session.getAttribute("memberId");

		model.addAttribute("memberId", memberId);

		QuestionListVO question = service.selectQuestion(listNum);
		model.addAttribute("question", question);

		ArrayList<ReplyVO> replyList = service.readAllReply(listNum);
		model.addAttribute("replyList", replyList);

		return "question/question";
	}

	// 글 삭제
	@RequestMapping(value = "/deleteQuestion", method = RequestMethod.GET)
	public String deleteQuestion(int listNum) {
		logger.info("deleteQuestion 메소드 실행(GET)");

		boolean resultPlus = service.deleteQuestionReply(listNum);
		if (resultPlus) {
			logger.info("글-댓글 삭제 성공");
		} else {
			logger.info("글-댓글 삭제 실패");
		}

		boolean result = service.deleteQuestion(listNum);
		if (result) {
			logger.info("게시글 삭제 성공");
		} else {
			logger.info("게시글 삭제 실패");
		}

		return "redirect:/question/questionList";
	}

	// 글 수정 페이지 이동
	@RequestMapping(value = "/updateQuestion", method = RequestMethod.GET)
	public String updateQuestion(int listNum, Model model) {

		logger.info("updateQuestion 메소드 실행(GET)");

		QuestionListVO questionList = service.selectQuestion(listNum);

		model.addAttribute("questionList", questionList);

		return "question/questionListUpdate";
	}

	// 글 수정
	@RequestMapping(value = "/updateQuestion", method = RequestMethod.POST)
	public String updateQuestion(QuestionListVO questionList, @RequestParam("uploadFile") MultipartFile mfile,
			HttpSession session, int listNum) {

		logger.info("updateQuestion 메소드 실행(POST)");

		String memberNm = (String) session.getAttribute("memberNm");

		String savedFileName = FileService.saveFile(mfile, UPLOAD_PATH);

		boolean result = service.updateList(questionList, memberNm, mfile.getOriginalFilename(), savedFileName);

		String returnUrl = null;

		if (result) {
			logger.info("게시글 수정 성공");
			returnUrl = "redirect:/question/question?listNum=" + listNum;
		} else {
			logger.info("게시글 수정 실패");
			returnUrl = "redirect:question/questionList";
		}
		return returnUrl;
	}

	// 댓글 쓰기
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public String replyWrite(HttpSession session, String replyContent, int listNum) {
		logger.info("replyWrite 메소드 실행(POST)");
		String memberNm = (String) session.getAttribute("memberNm");
		String memberId = (String) session.getAttribute("memberId");

		boolean result = service.replyWrite(replyContent, listNum, memberId, memberNm);

		String returnUrl = null;
		if (result) {
			logger.info("댓글 작성 성공");
			returnUrl = "redirect:/question/question?listNum=" + listNum;
		} else {
			logger.info("댓글 작성 실패");
			returnUrl = "redirect:/question?listNum=" + listNum;
		}
		return returnUrl;
	}

	// 댓글 삭제
	@RequestMapping(value = "/deleteReply", method = RequestMethod.GET)
	public String deleteReply(int replyNum, int listNum) {
		logger.info("deleteReply 메소드 실행(GET)");

		logger.info("rep: {}", replyNum);
		logger.info("list: {}", listNum);
		boolean result = service.deleteReply(replyNum);
		if (result) {
			logger.info("댓글 삭제 성공");
		} else {
			logger.info("댓글 삭제 실패");
		}

		return "redirect:/question/question?listNum=" + listNum;
	}

	// 댓글 수정
	@RequestMapping(value = "/updateReply", method = RequestMethod.POST)
	public String updateReply(int replyNum, int listNum, String replyContent) {
		logger.info("updateReply 메소드 실행(POST)");

		ReplyVO updateReply = new ReplyVO();
		updateReply.setReplyNum(replyNum);
		updateReply.setReplyContent(replyContent);
		boolean result = service.updateReply(updateReply);
		if (result) {
			logger.info("댓글 수정 성공");
		} else {
			logger.info("댓글 수정 실패");
		}

		return "redirect:/question/question?listNum=" + listNum;
	}

}

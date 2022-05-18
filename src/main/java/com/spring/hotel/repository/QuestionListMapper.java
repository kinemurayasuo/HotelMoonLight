package com.spring.hotel.repository;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring.hotel.vo.QuestionListVO;
import com.spring.hotel.vo.ReplyVO;

public interface QuestionListMapper 
{
	ArrayList<QuestionListVO> getQuestionList(HashMap<String, Object> map);
	
	ArrayList<QuestionListVO> searchQuestion(HashMap<String, Object> map);	// 게시글 검색

	int insertList(QuestionListVO newQuestion);		// 글 쓰기
	
	QuestionListVO selectQuestion(int listNum);		// 글 읽기

	int deleteQuestion(int listNum);				// 글 삭제

	int updateList(QuestionListVO questionList);	// 글 수정

	ArrayList<ReplyVO> readAllReply(int listNum);	// 글-댓글 불러오기

	int replyWrite(ReplyVO reply);					// 댓글 쓰기

	int deleteReply(int replyNum);					// 댓글 삭제

	int deleteQuestionReply(int listNum);			// 글을 삭제하기 위한 글에 있는 댓글 삭제

	int updateReply(ReplyVO updateReply);			// 댓글 수정

	int getTotalRecordsCount();						// 전체 게시글 수
	
	int getTotalSearchRecordsCount(HashMap<String, Object> map);	// 검색 게시글 수

	int deleteMemberReply(String memberId);			// 회원탈퇴 관련 댓글 삭제

	int deleteMemberQuestion(String memberId);		// 회원탈퇴 관련 게시글 삭제
	
}

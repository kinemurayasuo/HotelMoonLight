package com.spring.hotel.repository;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hotel.vo.QuestionListVO;
import com.spring.hotel.vo.ReplyVO;

@Repository
public class QuestionListRepository {
	@Autowired
	private SqlSession session;

	public ArrayList<QuestionListVO> getQuestionList(HashMap<String, Object> map) {
		ArrayList<QuestionListVO> result = null;
		QuestionListMapper mapper = null;

		try {
			mapper = session.getMapper(QuestionListMapper.class);

			result = mapper.getQuestionList(map);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public ArrayList<QuestionListVO> searchQuestion(HashMap<String, Object> map) {
		ArrayList<QuestionListVO> result = null;
		QuestionListMapper mapper = null;

		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.searchQuestion(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int insertList(QuestionListVO newQuestion) {
		int result = 0;
		QuestionListMapper mapper = null;

		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.insertList(newQuestion);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public QuestionListVO selectQuestion(int listNum) {
		QuestionListVO result = null;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.selectQuestion(listNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int deleteQuestion(int listNum) {
		int result = 0;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.deleteQuestion(listNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int updateList(QuestionListVO questionList) {
		int result = 0;
		QuestionListMapper mapper = null;

		try {
			mapper = session.getMapper(QuestionListMapper.class);

			result = mapper.updateList(questionList);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public ArrayList<ReplyVO> readAllReply(int listNum) {
		ArrayList<ReplyVO> result = null;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.readAllReply(listNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int replyWrite(ReplyVO reply) {
		int result = 0;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.replyWrite(reply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int deleteReply(int replyNum) {
		int result = 0;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.deleteReply(replyNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int deleteQuestionReply(int listNum) {
		int result = 0;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.deleteQuestionReply(listNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int updateReply(ReplyVO updateReply) {
		int result = 0;
		QuestionListMapper mapper = null;
		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.updateReply(updateReply);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int getTotalRecordsCount() {
		{
			int result = 0;
			QuestionListMapper mapper = null;

			try {
				mapper = session.getMapper(QuestionListMapper.class);
				result = mapper.getTotalRecordsCount();
			} catch (Exception e) {
				e.printStackTrace();
			}

			return result;
		}
	}

	public int getTotalSearchRecordsCount(HashMap<String, Object> map) {
		int result = 0;
		QuestionListMapper mapper = null;

		try {
			mapper = session.getMapper(QuestionListMapper.class);
			result = mapper.getTotalSearchRecordsCount(map);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
}

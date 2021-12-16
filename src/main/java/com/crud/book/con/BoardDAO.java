package com.crud.book.con;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertBoard(BoardVO vo) {
		int result = sqlSession.update("Board.insertBoard", vo);
		return result;
	}
	
	public int updateBoard(BoardVO vo) {
		int result = sqlSession.update("Board.updateBoard", vo);
		return result;
	}
	
	public int getBoard(int seq) {
		int result = sqlSession.update("Board.getBoard", seq);
		return result;
	}
	
	public int getBoardList(BoardVO vo) {
		int result = sqlSession.update("Board.getBoardList", vo);
		return result;
	}
	
	public int deleteBoard(int id) {
		int result = sqlSession.update("Board.deleteBoard", id);
		return result;
	}
	
}

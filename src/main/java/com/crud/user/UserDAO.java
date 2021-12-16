package com.crud.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertUser(UserVO vo) {
		int result = sqlSession.update("User.insertUser", vo);
		return result;
	}
	
	public int updateUser(UserVO vo) {
		int result = sqlSession.update("User.updateUser", vo);
		return result;
	}
	
	public UserVO getUser(int seq) {
		UserVO result = sqlSession.selectOne("User.getUser", seq);
		return result;
	}
	
}

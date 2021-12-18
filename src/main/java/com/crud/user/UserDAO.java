package com.crud.user;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
//JdbcTemplate jdbcTemplate;
public class UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public UserVO getUser(UserVO vo) {
		return sqlSession.selectOne("User.getUser", vo);
	}
	
}

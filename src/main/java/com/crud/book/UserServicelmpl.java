package com.crud.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.user.UserDAO;
import com.crud.user.UserVO;


@Service
public class UserServicelmpl implements UserService{
	
	@Autowired
	UserDAO userDAO;
	
	@Override
	public int insertUser(UserVO vo) {
		return userDAO.insertUser(vo);
	}
	
	@Override
	public UserVO getUser(int seq) {
		return userDAO.getUser(seq);
	}

	@Override
	public int updateUser(UserVO vo) {
		return userDAO.updateUser(vo);
	}
}
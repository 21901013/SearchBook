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
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
}
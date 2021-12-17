package com.crud.book;

import com.crud.user.UserVO;

public interface UserService {
	public int insertUser(UserVO vo);
	public int updateUser(UserVO vo);
	public UserVO getUser(int seq);
}

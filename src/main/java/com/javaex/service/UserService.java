package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	//회원가입
	public int join(UserVo userVo) {
		System.out.println("userService:join");
		
		return userDao.insert(userVo);	
	}

	//로그인
	public UserVo login(UserVo userVo) {
		System.out.println("userService:login");
		
		return userDao.selectUser(userVo);
	}

	//아이디 체크(ajax용)
	public boolean checkId(String id) {
		System.out.println(id);
		
		UserVo userVo = userDao.selectUser(id);
		
		if(userVo == null) {
			return true;	
		}else {
			return false;
		}
	}	
}


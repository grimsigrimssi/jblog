package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	//회원가입 폼
	@RequestMapping("/joinForm")
	public String joinForm() {
		System.out.println("userController/joinForm");
		
		return "user/joinForm";
	}
	
	//회원가입
	@RequestMapping("/join")
	public String join(@ModelAttribute UserVo userVo) {
		System.out.println("userController/join");
		
		int count =userService.join(userVo);
		
		return "user/joinSuccess";
	}
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		System.out.println("userController/loginForm");
		
		return "user/loginForm";
	}
	
	@RequestMapping("/login")
	public String login(@ModelAttribute UserVo userVo) {
		System.out.println("userController/login");
		
		userService.login(userVo);
		
		return "redirect:/main";
	}
	
	@ResponseBody
	@RequestMapping("/idcheck")
	public boolean idcheck(@RequestParam("userId") String id) {
		System.out.println("userController/idcheck");
		
		return userService.checkId(id);		
	}	

}

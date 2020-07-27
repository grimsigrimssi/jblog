package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/blog")
public class BlogMainController {
		
	@RequestMapping("/blog-main")
	public String blogMain() {
		System.out.println("userController/blog-main");
		
		return "blog/blog-main";
	}

}


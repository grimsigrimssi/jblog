package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {
	
	@RequestMapping("/main")
	public String index() {
		System.out.println("main>main()");
		
		return "main/index";
	}

}

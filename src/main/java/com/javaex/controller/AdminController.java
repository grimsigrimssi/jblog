package com.javaex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaex.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/basic")
	public String basic() {
		System.out.println("adminController/admin-basic");
		
		return "blog/admin/blog-admin-basic";
	}
	
	@RequestMapping("/category")
	public String category() {
		System.out.println("adminController/admin-cate");
		
		return "blog/admin/blog-admin-cate";
		
	}
	
	@RequestMapping("/writeForm")
	public String write() {
		System.out.println("adminController/admin-write");
		
		return "blog/admin/blog-admin-write";
	}
	
		

}

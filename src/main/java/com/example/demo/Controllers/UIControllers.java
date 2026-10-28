package com.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UIControllers {
	@RequestMapping("/")
	public String one() {
		return "home";
	}

	@RequestMapping("/ur")
	public String two() {
		return "UserRegister";
	}

	@RequestMapping("adminlogin")
	public String three() {
		return "AdminLogin";
	}

	@RequestMapping("/AdminDashboard")
	public String AdminDashboard() {
		return "AdminDashboard";
	}
}

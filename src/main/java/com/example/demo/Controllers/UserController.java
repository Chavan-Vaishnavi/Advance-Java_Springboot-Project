package com.example.demo.Controllers;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Entities.Users;
import com.example.demo.Services.UsersService;

@Controller
public class UserController {

	@Autowired
	UsersService us;

	//to insert/save data

	@RequestMapping("/savedata")
	public String one(@ModelAttribute Users u1) {  //u1 contains all data come from form
		u1.setUid(UUID.randomUUID().toString());
		System.out.println(u1);

		us.register(u1);
		return "redirect:/fetchUsers";
	}

	//to fetch/read data
	@RequestMapping("/fetchUsers")
	public String two(Model m) {
		List<Users> l1=us.getAllUsers();
		m.addAttribute("temp", l1);
		return "UsersList"; //l1 as users list
	}

	//to delete data
	@RequestMapping("/deleteData/{id}")
	public String three(@PathVariable("id") String id) {
		us.delData(id);
		return "redirect:fetchUsers";
	}

	//to edit/update data
	//to edit/update data
	@RequestMapping("/edit/{id}")
	public String four(@PathVariable("id") String x,Model m) {
		Users uk=us.getSingleData(x);
		m.addAttribute("temp",uk);
		return "edit";
	}

	@RequestMapping("/updatedata")
	public String five(@ModelAttribute Users up) {
		//set up data to new object and call register method again
		us.updateUser(up);
		return "redirect:fetchUsers";
	}



}
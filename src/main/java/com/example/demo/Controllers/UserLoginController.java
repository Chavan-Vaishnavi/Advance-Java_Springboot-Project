
package com.example.demo.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Dao.Repository.UsersRepo;
import com.example.demo.Entities.Users;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserLoginController {

    @Autowired
    UsersRepo ur;

    // Display login page
    @GetMapping("/login")
    public String loginPage() {
        return "userlogin";
    }

    // Process login form
    @PostMapping("/login")
    public String checkLogin(@RequestParam String uemail,@RequestParam String upass,HttpSession session,Model model) {

        Users user = ur.findByUemailAndUpass(uemail, upass);

        if (user != null) {
            session.setAttribute("loggedInUser", user);
            return "redirect:/loanform";
        }

        model.addAttribute("error", "Invalid email or password");
        return "userlogin";
    }
}

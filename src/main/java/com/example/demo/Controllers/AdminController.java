
package com.example.demo.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

    // Open admin login page
    @GetMapping("/adminlogin")
    public String adminLoginPage() {
        return "adminLogin";
    }

    // Check admin credentials
    @PostMapping("/CheckCredentials")
    public String checkCredentials(@RequestParam("t1") String email,@RequestParam("t2") String password,HttpSession session) {

        if (email.equals("admin@gmail.com") && password.equals("Admin@11")) {

            session.setAttribute("adminLoggedIn", true);

            return "redirect:/adminDashboard";
        }

        return "redirect:/adminlogin";
    }
    
    @GetMapping("/adminDashboard")
    public String adminDashboard(HttpSession session) {

        if (session.getAttribute("adminLoggedIn") == null) {
            return "redirect:/adminlogin";
        }

        return "adminDashboard";
    }

}

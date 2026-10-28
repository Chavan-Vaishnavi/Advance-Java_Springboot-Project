package com.example.demo.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.Entities.LoanApplication;
import com.example.demo.Entities.Users;
import com.example.demo.Services.LoanService;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoanController {

    @Autowired
    LoanService ls;

    @GetMapping("/loanform")
    public String loanForm(HttpSession session) {
        if (session.getAttribute("loggedInUser") == null) {
            return "redirect:/userlogin";
        }

        return "loanform";
    }

    @PostMapping("/submitLoan")
    public String submitLoan(@ModelAttribute LoanApplication loan,HttpSession session) {

        Users user = (Users) session.getAttribute("loggedInUser");

        if (user == null) {
            return "redirect:/userlogin";
        }

        // Get user details from the session, not from form inputs
        loan.setUid(user.getUid());
        loan.setApplicantName(user.getUname());
        loan.setEmail(user.getUemail());
        loan.setStatus("Pending");

        ls.applyLoan(loan);

        return "redirect:/myloans";
    }

    @GetMapping("/myloans")
    public String myLoans(HttpSession session, Model model) {
        Users user = (Users) session.getAttribute("loggedInUser");

        if (user == null) {
            return "redirect:/userlogin";
        }

        model.addAttribute("loans", ls.getUserLoans(user.getUid()));

        return "myloans";
    }

    @GetMapping("/admin/loan-applications")
    public String allLoans(HttpSession session, Model model) {

        if (session.getAttribute("adminLoggedIn") == null) {
            return "redirect:/adminlogin";
        }

        model.addAttribute("loans", ls.getAllLoans());

        return "LoanApplications";
    }
}
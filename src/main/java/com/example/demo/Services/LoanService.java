package com.example.demo.Services;

import java.util.List;

import com.example.demo.Entities.LoanApplication;

public interface LoanService {
	
    public void applyLoan(LoanApplication loan);
    
    List<LoanApplication> getAllLoans();
    
    List<LoanApplication> getUserLoans(String uid);
}
package com.example.demo.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Dao.Repository.LoanRepo;
import com.example.demo.Entities.LoanApplication;
import com.example.demo.Services.LoanService;

@Service
public class LoanDao implements LoanService {

    @Autowired
    LoanRepo lr;

    @Override
    public void applyLoan(LoanApplication loan) {
        lr.save(loan);
    }

    @Override
    public List<LoanApplication> getAllLoans() {
        return lr.findAll();
    }

    @Override
    public List<LoanApplication> getUserLoans(String uid) {
        return lr.findByUid(uid);
    }
}
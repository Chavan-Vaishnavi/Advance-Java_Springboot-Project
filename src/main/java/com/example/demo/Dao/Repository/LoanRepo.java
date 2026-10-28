package com.example.demo.Dao.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entities.LoanApplication;

public interface LoanRepo extends JpaRepository<LoanApplication, Long> {
     List<LoanApplication> findByUid(String uid);
}
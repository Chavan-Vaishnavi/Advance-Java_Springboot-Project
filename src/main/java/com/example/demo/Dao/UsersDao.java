package com.example.demo.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Dao.Repository.UsersRepo;
import com.example.demo.Entities.Users;
import com.example.demo.Services.UsersService;

@Service
public class UsersDao implements UsersService {

	@Autowired
	UsersRepo ur;

	@Override
	public void register(Users u1) {
		ur.save(u1);

	}

	@Override
	public List<Users> getAllUsers() {
		List<Users> l1=ur.findAll();
		return l1;
	}

	@Override
	public void delData(String x) {
		ur.deleteById(x);

	}

	@Override
	public Users getSingleData(String x) {
		Users p=ur.findById(x).orElse(null);
		return p;
	}

	@Override
	public void updateUser(Users up) {

	    Users old = ur.findById(up.getUid()).orElse(null);

	    if (old != null) {
	        old.setUname(up.getUname());
	        old.setUemail(up.getUemail());
	        old.setUpass(up.getUpass());

	        ur.save(old);
	    }
	}
}

package com.example.demo.Services;

import java.util.List;

import com.example.demo.Entities.Users;

public interface UsersService {
	public void register(Users u1);

	public List<Users> getAllUsers();

	public void delData(String x);

	public Users getSingleData(String x);

	public void updateUser(Users up);
}

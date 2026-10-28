package com.example.demo.Dao.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entities.Users;

public interface UsersRepo extends JpaRepository<Users,String>{ //taken string bcz. first parameter is id has type string
	 Users findByUemailAndUpass(String uemail, String upass);
}

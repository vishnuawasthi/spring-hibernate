package com.poc.dao;

import java.util.List;

import com.poc.entity.User;

public interface LoginDAO {

	User login(String username, String password);

	User getUser(Long id);

	boolean save(User user);

	List<User> getAll();
}

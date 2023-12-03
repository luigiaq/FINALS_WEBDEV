package com.it1311l.uap.oneflightfinals.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.it1311l.uap.oneflightfinals.models.User;
import com.it1311l.uap.oneflightfinals.repositories.UserRepository;

@RestController
public class UserController {
	@Autowired
	UserRepository userRepository;
	
	@PostMapping("/users")
	public User createUser(@RequestBody User user) {
		userRepository.create(user);
		return user;
	}
	
	@GetMapping("/users")
	public List<User> getUsers() {
		return userRepository.findAll();
	}
	
	@GetMapping("/users/{id}")
	public User getUser(@PathVariable("id") Integer id) {
		return userRepository.find(id);
	}
	
	@PutMapping("/users/{id}")
	public int updateUser(@PathVariable("id") Integer id, @RequestBody User user) {
		user.setid(id);
		return userRepository.update(user);
	}
	
	@DeleteMapping("/users/{id}")
	public int deleteUser(@PathVariable("id") Integer id) {
		return userRepository.delete(id);
	}
	
	@PostMapping("/login")
	public User login(@RequestBody User user) {
		return userRepository.login(user.getemail(), user.getpassword());
	}
}
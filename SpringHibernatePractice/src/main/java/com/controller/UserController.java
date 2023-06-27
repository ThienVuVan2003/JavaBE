package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.User;
import com.entity.dto.UserDTO;
import com.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;

	@GetMapping("/")
	public String login() {
		return "login";
	}

	@PostMapping("/login")
	public String login(@ModelAttribute("loginForm") User user, ModelMap model) {
		System.out.println(user);
		User userResult = userService.checklogin(user);
		if (userResult != null) {
			model.addAttribute("userName", userResult.getUserName());
			return "welcome";
		} else {
			model.addAttribute("error", "invalid");
			return "login";
		}
	}

	@GetMapping("/list-user")
	public String getUser(ModelMap model) {
		List<User> list = userService.getUser();
		List<UserDTO> listDto = new ArrayList<UserDTO>();
		for (User user : list) {
			listDto.add(new UserDTO(user.getUserId(), user.getUserName(), user.getPassword()));
		}
		model.addAttribute("users", listDto);
		return "list-user";
	}

	@GetMapping("/addUser")
	public String addUser(ModelMap model) {
		UserDTO user = new UserDTO();
		model.addAttribute("user", user);
		return "addUser";
	}

	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User user, ModelMap model) {
		userService.saveUser(user);
		List<User> list = userService.getUser();
		List<UserDTO> listDto = new ArrayList<UserDTO>();
		for (User u : list) {
			listDto.add(new UserDTO(u.getUserId(), u.getUserName(), u.getPassword()));
		}
		model.addAttribute("users", listDto);
		return "list-user";
	}
	
	@GetMapping("/detail/{userId}")
	public String getBook(ModelMap model, @PathVariable("userId") String userId) {
		return "redirect:/book/" + userId + "/list-book";
	}
		
}

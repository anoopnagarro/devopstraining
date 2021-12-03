package com.nagarro.devopstrainingmaven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.nagarro.devopstrainingmaven.dto.User;
import com.nagarro.devopstrainingmaven.service.MathService;

@Controller
public class MessageController {
	
	@Autowired
	MathService mathService;
	
	private static int noOfVisitors=0;

	@GetMapping(path = "/greet", produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> greet() {
		
		System.out.println(mathService.addTwoNumbers(5,10));

		return ResponseEntity.ok("Hello Devops, You are user number : "+ ++noOfVisitors );
	}


	@GetMapping(path = "/hello")
	public String hello(
			 @PathVariable(value = "name", required = false) String name,  Model mv) {
		
		mv.addAttribute(name, name);
		return "hello";
	}
	
	@GetMapping(path = "/")
	public String home() {
		return "index";
	}
	
	@GetMapping("/form")
	public String registerUser(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "registrationform";
	}
	
	@PostMapping(path = "/register")
	public String registerNewUser(@ModelAttribute(name = "user") User user) {
		System.out.println("Welcome" +user.getEmail());
		return "dashboard";
	}

}

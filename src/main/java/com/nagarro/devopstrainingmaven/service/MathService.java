package com.nagarro.devopstrainingmaven.service;

import org.springframework.stereotype.Service;

@Service
public class MathService {
	
	public int addTwoNumbers(int a, int b) {
		return a+b;
	}
}

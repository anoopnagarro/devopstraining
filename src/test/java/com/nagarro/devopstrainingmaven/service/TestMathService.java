package com.nagarro.devopstrainingmaven.service;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

class TestMathService {
	
	MathService mathService = new MathService();

	@Test
	void testAddTwoNumbers() {
		assertEquals(15, mathService.addTwoNumbers(10, 5) );
	}
	
	

}

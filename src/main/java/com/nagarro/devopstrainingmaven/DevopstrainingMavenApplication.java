package com.nagarro.devopstrainingmaven;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan("com.nagarro.devopstrainingmaven")
@SpringBootApplication
public class DevopstrainingMavenApplication {

	public static void main(String[] args) {
		SpringApplication.run(DevopstrainingMavenApplication.class, args);
	}

}

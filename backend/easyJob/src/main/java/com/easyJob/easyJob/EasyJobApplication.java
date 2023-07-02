package com.easyJob.easyJob;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@EnableSwagger2
public class EasyJobApplication {

	public static void main(String[] args) {
		SpringApplication.run(EasyJobApplication.class, args);
//		SpringApplication.run(EasyJobApplication.class, args);
	}
}

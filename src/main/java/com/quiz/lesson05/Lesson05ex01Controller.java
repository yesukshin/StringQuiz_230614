package com.quiz.lesson05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class Lesson05ex01Controller {
	
	@GetMapping("/lesson05/ex01")
	public String ex01() {
		return "lesson05/ex01";
	}
	
	
	@@GetMapping("/lesson05/ex02")
	public String ex01() {
		return "lesson05/ex02";
	}

}

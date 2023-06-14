package com.quiz.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

	@ResponseBody                 // @ResponseBody에 담긴다는 뜻.
	@RequestMapping("/test1")	  
	public String test1() {
		return "Hello world!!!";  // @ResponseBody에 있는게 브라우저에 뿌려짐 
		                         
	}
}

package com.quiz.lesson01;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("lesson01/quiz01")
@Controller
public class Lesson01QuizController {
	
	@ResponseBody
	@RequestMapping("lesson01/quiz01/1")
	public String ex01() {
		
		String text  = "";
		return text;
		
		
		
	}
	
	@ResponseBody
	@RequestMapping("lesson01/quiz01/2")
	public Map<String, Object> ex02() {
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("국어", 90);
		return map;
		
	}
	
	

}

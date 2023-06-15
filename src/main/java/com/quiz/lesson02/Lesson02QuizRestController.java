package com.quiz.lesson02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson02.bo.StoreBO;
import com.quiz.lesson02.domain.Stores;

@RestController // @Controller + @ResponseBody
public class Lesson02QuizRestController {
	
	@Autowired
	private StoreBO storeBo;
	//http://localhost:88/lesson02/quiz01
	@RequestMapping("/lesson02/quiz01")
	public List<Stores> ex02() {
		
		List<Stores> storeList = storeBo.getStoresList(); 
		return storeList; // json
	}
}

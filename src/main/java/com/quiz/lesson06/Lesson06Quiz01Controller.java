package com.quiz.lesson06;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.FavoriteBO;

@RequestMapping("/lesson06/quiz01")
@Controller
public class Lesson06Quiz01Controller {
	
	@Autowired
	FavoriteBO favoriteBO;
	
	@GetMapping("/add_bookmark_view") 
	public String add_bookmark_view() {
		
		return "lesson06/add_bookmark";
	}
	
	@PostMapping("/add_bookmark")
	@ResponseBody
    public String add_bookmark(
    		@RequestParam("title") String title,
    		@RequestParam("address") String address) {
		
		// DB입력
		favoriteBO.addBookmark(title, address);
		
		// 목록화면으로 리턴		
		return "lesson06/bookmark_list";
		
	}

}
 
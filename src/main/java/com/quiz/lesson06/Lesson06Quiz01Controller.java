package com.quiz.lesson06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.FavoriteBO;
import com.quiz.lesson06.domain.Favorite;

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
    		@RequestParam("name") String name,
    		@RequestParam("url") String url) {
		
		// DB입력
		favoriteBO.addBookmark(name, url);
		
		// 목록화면으로 리턴		
		//return "lesson06/bookmark_list";
		return "성공";
		
	}
	
	@GetMapping("/bookmark_list_view")
	public String bookmark_list(Model model) {
		
		List<Favorite> bookmarkList = favoriteBO.getBookmark();
		model.addAttribute("bookmarkList", bookmarkList);
		
		return "lesson06/bookmark_list";
		
	}

}
 
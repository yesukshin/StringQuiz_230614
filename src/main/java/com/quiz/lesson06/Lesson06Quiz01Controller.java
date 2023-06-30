package com.quiz.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
    public Map<String, Object> add_bookmark(
    		@RequestParam("name") String name,
    		@RequestParam("url") String url) {
		
		// DB입력
		favoriteBO.addBookmark(name, url);
		
		// 응답
		// "{"code":1, "result":"성공"}"    JSON String
		Map<String, Object> result = new HashMap<>();
		result.put("code", 1); 
		result.put("result", "성공");
				
		return result;
		
	}
	
	@GetMapping("/bookmark_list_view")
	public String bookmark_list(Model model) {
		
		List<Favorite> bookmarkList = favoriteBO.getBookmark();
		model.addAttribute("bookmarkList", bookmarkList);
		
		return "lesson06/bookmark_list";
		
	}
	
	@GetMapping("/is_Duplication")
	@ResponseBody
	public Map<String, Object> isDuplication(
			@RequestParam("url") String url) {
		
		boolean isExist = favoriteBO.existUrlbyAddr(url);
		Map<String, Object> result = new HashMap<>();
		
		result.put("isDuplication", isExist);
		
		return result;
		
	}
	
	@GetMapping("/delete_bookmark")
	@ResponseBody
	public Map<String, Object> deleteById(
			@RequestParam("id") String id) {
		
		favoriteBO.deleteById(id);
		Map<String, Object> result = new HashMap<>();
		
		result.put("result", "성공");
		
		return result;
		
	}

}
 
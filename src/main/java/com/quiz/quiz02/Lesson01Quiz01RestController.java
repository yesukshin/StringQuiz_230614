package com.quiz.quiz02;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController // @Controller + @ResponseBody
@RequestMapping("/lesson01/quiz02")
public class Lesson01Quiz01RestController {
	
	// http://localhost:88/lesson01/quiz02/1
	@RequestMapping("/1")	
	public List<Map<String, Object>> quiz02 () {
		
		List<Map<String, Object>> list = new ArrayList<>();
		
		
		Map<String, Object> map= new HashMap<>();
		
		map.put("rate", 15);
		map.put("directer", "봉준호");
		map.put("time", 131);
		map.put("title", "기생충");		
		list.add(map);
		
		
		HashMap map1 = new HashMap<>();		
		map1.put("rate", 0);
		map1.put("directer", "로베르틉니니");
		map1.put("time", 116);
		map1.put("title", "인생은 아름다워");		
		list.add(map1);
		
		HashMap map2 = new HashMap<>();
		map2.put("rate", 12);
		map2.put("directer", "크리스토퍼놀란");
		map2.put("time", 147);
		map2.put("title", "인셉션");		
		list.add(map2);
		
		return list;
		
		
	}
	
	// http://localhost:88/lesson01/quiz03/1
	@RequestMapping("/2")	
	public List<Board> quiz03() {	
		// @ResponseBody + return String ==> HttpMessageConverter => HTML
		// @ResponseBody + return 객체 ==> HttpMessageConverter, jackson라이브러리=> JSON String으로 내려감
		List<Board> resultList = new ArrayList<>();
		
		Board board = new Board();
		
		board.setTitle("안녕하세요");
		board.setContent("가입합니다");
		board.setUser("하굴러");
		resultList.add(board);
		
        board = new Board();
		
		board.setTitle("안녕하세요");
		board.setContent("가입합니다");
		board.setUser("하굴러");
		resultList.add(board);
		
        board = new Board();
		
		board.setTitle("안녕하세요");
		board.setContent("가입합니다");
		board.setUser("하굴러");
		
		resultList.add(board);
		
		return resultList;
		
	}
    
	@RequestMapping("/3")	
	public ResponseEntity<Board> quiz04() {	
		
		Board board = new Board();
		
		board.setTitle("안녕하세요");
		board.setContent("가입합니다");
		board.setUser("하굴러");
		
		return new ResponseEntity<>(board, HttpStatus.INTERNAL_SERVER_ERROR);
	}
}

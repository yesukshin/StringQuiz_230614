package com.quiz.quiz02;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Lesson01Quiz03Controller {
	
	//http://localhost:88/lesson01/quiz03/1
	@RequestMapping("/lesson01/quiz03/1")
	public String quiz03_1() {
		/// 실제 보내지는 경로는 webapp아래 "WEB-INF/jsp/(리턴값).jsp"
		// @ResponseBody가 아닌 @Controller인 상태로 String리턴하면
		// ViewResolver 클래스에 의해 리턴된 String의 뷰 경로를 찾아 수행한다
		return "lesson01/quiz03";
		
	}
}

package com.quiz.quiz03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.quiz03.bo.RealtorBO;
import com.quiz.quiz03.domain.Realtor;

@Controller
@RequestMapping("/quiz03")
public class Lesson04Quiz03Controller {
	
	@Autowired
	RealtorBO realtorBO;
	
	@GetMapping("/add_realtor_view")
	public String addRealtorView() {
		//입력화면 호출
		return  "quiz03/addRealtor";
		
	}
	
	//결과페이지
	@PostMapping("/add_realtor")
	public String addRealtor(
			@ModelAttribute Realtor realtor, //jsp의 name속성과 일치하는 컬럼명을 셋터를 통해 값을 가져옴
			Model model) {  //Model model : 컨트롤로와 뷰사이 데이터를 가지고 있음
		//DB 입력
		realtorBO.addRealtor(realtor);
		//realtor.getId();
		//DB 조회
		Realtor getRealtor = realtorBO.getRealtor(realtor.getId());
		//모델에 담기
		model.addAttribute("result", getRealtor);//select한 데이터를 모델에 담고 결과페이지로 이동
		//조회화면 호출
		return "quiz03/realtorInfo";
	}

}

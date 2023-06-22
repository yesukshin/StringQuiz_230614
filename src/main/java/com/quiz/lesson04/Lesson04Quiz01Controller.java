package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.domain.Seller;

@RequestMapping("/lesson04/quiz01")
@Controller
public class Lesson04Quiz01Controller {
	
	@Autowired
	private SellerBO sellerBO;
	
	//판매자 추가페이지
	//주소를 치고 들어오는 get방식
	@GetMapping("/add_seller_view")
	public String addSellerView() {
		
		return "lesson04/addSeller";
	}
	
	//추가액션
	@PostMapping("/add_seller")
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam(value = "profile_Image_Url", required = false) String profileImageUrl, 
			@RequestParam("temperature") double temperature) {
		
		// db insert
		
		sellerBO.addSeller(nickname, profileImageUrl, temperature);
		
		// 입력성공페이지		
		return "lesson04/afterAddSeller";
		
	}
	
	/*최근가입자 정보 페이지 
	@GetMapping("/seller_info")
	public String sellerInfo(Model model) {
		
		Seller seller = sellerBO.getLatestSeller();
		model.addAttribute("seller",seller );
		
		return "lesson04/sellerInfo";
		
	}*/
	//최근가입자 정보 페이지 
	@GetMapping("/seller_info")
	public String sellerInfo(
			@RequestParam(value="id", required=false) Integer id,
			Model model) {
		
		Seller seller = null;
		if (id==null) {
			// 최근가입자 db select
			seller = sellerBO.getLatestSeller();
		}else {
			// id 있는 경우
			seller = sellerBO.getSellerById(id);	
		}
		
		model.addAttribute("seller",seller);
		
		// 페이지로 이동
		return "lesson04/sellerInfo";
	}

}

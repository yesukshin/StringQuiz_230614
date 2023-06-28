package com.quiz.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson02.bo.StoreBO;
import com.quiz.lesson02.domain.Stores;
import com.quiz.store.bo.ReviewBO;
import com.quiz.store.domain.Review;

@Controller
@RequestMapping("/store")
public class StoreController {
	
	@Autowired
	private StoreBO storeBo;
	
	@Autowired
	private ReviewBO reviewBO;
	
	// 조회화면 호출
	@GetMapping("/store_list_view")
	public String getStore(Model model) {
		
		List<Stores> storeList = storeBo.getStoresList();
		
		model.addAttribute("result", storeList);
		
		return "store/storeInfo";
	}
    // controler->BO->cache(독립된서버)->DB
	
	@GetMapping("/review_list_view")
	public String getReviewList(@RequestParam("storeId") int storeId,
			@RequestParam(value="name",required=false) String name,
			Model model) {
		
		List<Review> reviewList = reviewBO.getReviewList(storeId);
		
		model.addAttribute("result", reviewList);
		model.addAttribute("name", name);
		
		return "store/reviewList";
	}
}

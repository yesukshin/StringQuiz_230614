package com.quiz.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson02.bo.StoreBO;
import com.quiz.lesson02.domain.Stores;

@Controller
@RequestMapping("/store")
public class StoreController {
	
	@Autowired
	private StoreBO storeBo;
	
	// 조회화면 호출
	@GetMapping("/store_list_view")
	public String getStore(Model model) {
		
		List<Stores> storeList = storeBo.getStoresList();
		
		model.addAttribute("result", storeList);
		
		return "store/storeInfo";
	}

}

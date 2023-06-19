package com.quiz.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;
import com.quiz.lesson03.domain.RealEstate;

@RestController
public class Lesson03Quiz02RestController {

	@Autowired
	private RealEstateBO realEstateBO;

	@RequestMapping("/Lesson03/quiz02/1")
	public String quiz02() {
		RealEstate realestate = new RealEstate();

		realestate.setRealtorId("3");
		realestate.setAddress("푸르지용 리버 303동 1104호");
		realestate.setArea(89);
		realestate.setType("매매");
		realestate.setPrice(100000);

		int successRow = realEstateBO.addrealEstate(realestate);

		return "성공된 행의 갯수 : " + successRow;

	}

}

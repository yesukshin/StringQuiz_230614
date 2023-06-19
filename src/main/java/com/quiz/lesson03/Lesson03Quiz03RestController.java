package com.quiz.lesson03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealEstateBO;

@RestController
public class Lesson03Quiz03RestController {
	
	@Autowired
	private RealEstateBO realEstateBO;
	
	@RequestMapping("/lesson03/quiz03/1")
	public String quiz03_1(
			@RequestParam(value ="realtorId") int realtorId ) {
		
			
		int row = realEstateBO.addRealEstateAsField(realtorId,"썅떼빌리버 오피스텔 814호",45,"월세",
				                                    100000, 250);
		
		return "성공한 행의 갯수는 : " + row;
		
	}

}

package com.quiz.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.RealEstateMapper;
import com.quiz.lesson03.domain.RealEstate;

@Service
public class RealEstateBO {

	@Autowired
	private RealEstateMapper realEstateMapper;
    
	// input : id
	// output: RealEstate를 controller한테 보냄 
	public RealEstate getRealEstateById(int id) {

		return realEstateMapper.selectRealEstateById(id);
	}
    
	// input : rentPrice
    // output: List<RealEstate>를 controller한테 보냄 
	public List<RealEstate> getRealEstateListByRentPrice(int rentPrice) {

		return realEstateMapper.selectRealEstateListByRentPrice(rentPrice);
	}
	
	public List<RealEstate> getRealEstateByRentArea(int area, int price){
		
		return realEstateMapper.selectRealEstateListByArea(area,price);
		
	}
}

package com.quiz.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.domain.RealEstate;

@Repository
public interface RealEstateMapper {
	
	public RealEstate selectRealEstateById(int id);
	public List<RealEstate> selectRealEstateListByRentPrice(@Param("rentPrice") int rentPrice);
	// mybatis는 파라미터를 하나만 인식할수 있어서하나의 맵으로 만들어 보내야한다
	// 맵으로 만들어주는 어노테이션 @Param
	// @Param("키") 값 => xml #{키}
	public List<RealEstate> selectRealEstateListByArea(@Param("area") int area,
			                                           @Param("price") int price   );
	public int insertRealEstate(RealEstate realestate);
	
	public int insertRealEstateAsField(@Param("realtorId") int realtorId, 
			                           @Param("address") String address, 
			                           @Param("area") int area, 
			                           @Param("type") String type, 
			                           @Param("price") int price, 
			                           @Param("rent_price") Integer rent_price);
}
package com.quiz.lesson06.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository()
public interface FavoriteMapper {

	void insertBookmark(@Param("title") String title, 
			            @Param("address") String address);
	

}

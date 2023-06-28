package com.quiz.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06.domain.Favorite;

@Repository()
public interface FavoriteMapper {

	void insertBookmark(@Param("name") String name, 
			            @Param("url") String url);

	List<Favorite> selectBookmark();
	

}

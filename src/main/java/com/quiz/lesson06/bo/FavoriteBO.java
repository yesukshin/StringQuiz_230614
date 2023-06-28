package com.quiz.lesson06.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.FavoriteMapper;

@Service
public class FavoriteBO {
    
	@Autowired
	FavoriteMapper favoriteMapper;
	
	public void addBookmark(String title, String address) {
		
		favoriteMapper.insertBookmark(title,address);
		
	}

}

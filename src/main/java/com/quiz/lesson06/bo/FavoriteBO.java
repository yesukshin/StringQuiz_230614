package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.FavoriteMapper;
import com.quiz.lesson06.domain.Favorite;

@Service
public class FavoriteBO {
    
	@Autowired
	FavoriteMapper favoriteMapper;
	
	public void addBookmark(String name, String url) {
		
		favoriteMapper.insertBookmark(name,url);
		
	}
	
    public List<Favorite> getBookmark() {
		
    	return  favoriteMapper.selectBookmark();
		
	}

}  

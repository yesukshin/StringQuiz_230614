package com.quiz.store.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.store.dao.ReviewMapper;
import com.quiz.store.domain.Review;

@Service
public class ReviewBO {
	
	@Autowired
	ReviewMapper reviewMapper ;
	
	public List<Review> getReviewList(int storeId) {
		
		return reviewMapper.selectReviewList(storeId);
		
	}

}

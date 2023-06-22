package com.quiz.quiz03.dao;

import org.springframework.stereotype.Repository;

import com.quiz.quiz03.domain.Realtor;

@Repository
public interface RealtorMapper {
	
	public void insertRealtor(Realtor realtor);
    
	public Realtor selectRealtor(int id);

}

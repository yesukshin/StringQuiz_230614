package com.quiz.quiz03.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.quiz03.dao.RealtorMapper;
import com.quiz.quiz03.domain.Realtor;

@Service
public class RealtorBO {
	
	@Autowired 
	RealtorMapper realtorMapper;
	
	public void addRealtor(Realtor realtor) {
		
		
		realtorMapper.insertRealtor(realtor);
		
	}

	public Realtor getRealtor(int id) {
	
		return realtorMapper.selectRealtor(id);
	}
	

}

package com.quiz.lesson02.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson02.domain.Stores;

@Repository
public interface StoresMapper {
	
	public List<Stores> selectStoreList();

}

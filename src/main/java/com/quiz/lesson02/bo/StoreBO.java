package com.quiz.lesson02.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson02.dao.StoresMapper;
import com.quiz.lesson02.domain.Stores;

@Service // 그냥 자바 빈이면 컨트롤러가 부를수 없다
public class StoreBO {
	
	// input:x
	// output : storeList
	@Autowired
	private StoresMapper storeMapper ;// spring bean을 주입받는다. 의존성 주입(DI)
	
	public List<Stores> getStoresList(){
		
		List<Stores> storeList = storeMapper.selectStoreList(); 
		return storeList;
	}

}

package com.quiz.weather.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.weather.domain.Weather;

@Repository
public interface WeatherMapper {
	
	public List<Weather> selectWeather();
	public void insertWeather(Weather weather);
	
	//파라미터를 각각 컬럼으로 받았을때는 아래와 같이 한다
//	public void insertWeather(@Param("date") Date date,
//			@Param("date") String weather,
//			@Param("date") String microDust..
//			);

}

package com.quiz.weather.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.weather.domain.Weather;

@Repository
public interface WeatherMapper {
	
	public List<Weather> selectWeather();

}

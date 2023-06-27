package com.quiz.weather;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.weather.bo.WeatherBO;
import com.quiz.weather.domain.Weather;

@RequestMapping("/weather")
@Controller
public class WeatherController {
	
	@Autowired
	WeatherBO weatherBO;
	
	//입력화면 호출
	@GetMapping("/add_weather_view")
	public String addWeatherView() {
		
		return  "weather/addWeather";
		
	}
	
	//조회
	@GetMapping("/weather_history_view")
	public String listWeather(
			Model model) {  	
		//DB 조회
		List<Weather> listWeather = weatherBO.getWeather();
		//모델에 담기
		model.addAttribute("result", listWeather);
		//조회화면 호출
		return "weather/weatherInfo";
	}
	
	//입력처리
	@PostMapping("/add_Weather")
	public String addWeather(
			@ModelAttribute Weather weather) {
		
		weatherBO.addWeather(weather);
		
		return "redirect:weather_history_view";
		
	}
	
}

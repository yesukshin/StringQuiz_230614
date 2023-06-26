<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>        
<!DOCTYPE html>

<table class="table text-center">
	<thead>
		<tr>
			<th>날짜</th>
			<th>날씨</th>
			<th>기온</th>
			<th>강수량</th>
			<th>미세먼지</th>
			<th>풍속</th>
		</tr>
	</thead>
	<tbody>
	    <c:forEach items="${result}" var = "weather">
	    <tr>
	       <td>
	       <fmt:formatDate value="${weather.date}" pattern="yyyy년 MM월 dd일"/>
	       </td>
	       <td>	      
	       <c:choose>
		     <c:when test="${weather.weather == '맑음' }">
		     <img src="/image/sunny.jpg">
		     </c:when>
		     <c:when test="${weather.weather == '구름조금' }">
		     <img src="/image/partlyCloudy.jpg">
		     </c:when>
		     <c:when test="${weather.weather == '흐림' }">
		     <img src="/image/cloudy.jpg">
		     </c:when>
		     <c:when test="${weather.weather == '비' }">
		     <img src="/image/rainy.jpg">
		     </c:when>
		   </c:choose>  
	       </td>
	       <td>${weather.temperatures}</td>
	       <td>${weather.precipitation}mm</td>
	       <td>${weather.microDust}</td>
	       <td>${weather.windSpeed}km/h</td>
		</tr>
	    </c:forEach>
	</tbody>
</table>


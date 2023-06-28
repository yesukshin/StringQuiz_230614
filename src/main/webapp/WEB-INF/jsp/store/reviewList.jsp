<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/css/store/style.css">
</head>
<body>
	<div id="wrap">
		<header class="col-10 d-flex justify-content-center align-items-center">
			
			    <h1 class="text-white">배탈의 민족</h1>
			
		</header>
		<div class="contents d-flex">		    
			<%-- 가게정보   mt-4 d-flex justify-content-center --%>
			<section class="col-10 mt-3 justify-content-center">	
			    <h1>${name} 리뷰</h1>
				<div>
				    <c:choose>
				       	<c:when test = "${empty result}">
				    		<div class="mt-4">
								<h4><b>작성된 리뷰가 없습니다.</b></h4>	
				    		</div>
				    	</c:when>
				    	<c:otherwise>
				    		<c:forEach items="${result}" var="review">
								<div class="goods-box1 mb-3 mr-2">
									<b>${review.userName}</b> 
									<b>${review.point}</b><br>
									<fmt:formatDate value="${review.createdAt}" pattern="yyyy년 MM월 dd일" /><br> 
									${review.review}<br>
									<div style="border:0px;border-radius:5px;background-color:lightgrey;margin:6px;padding:4px;width:40%">${review.menu}<br></div>
								</div>
							</c:forEach>
				    	</c:otherwise>
					</c:choose>		
				</div>					
			</section>
		</div>
		<footer class="d-flex align-items-center">
			<div class="copyright ml-4">
			  <hr width="800px">
			    <h4><b>(주)우와한 형제</b></h4>  
			  	<small class="text-dark"> 고객센터 1500-1500					
				</small>
			</div>
	</div>
</body>
</html>
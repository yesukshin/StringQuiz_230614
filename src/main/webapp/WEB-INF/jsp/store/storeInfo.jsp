<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날씨 정보</title>
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
		<header class="d-flex justify-content-center align-items-center">
			<h1 class="text-white">배탈의 민족</h1>
		</header>
		<div class="contents d-flex">
			<%-- 가게정보 --%>
			<section class="mt-4 d-flex justify-content-center">
				<div class="contents d-flex">
					<h3>우리동네 가게</h3>
					<br>
				</div>
				<div>
					<c:forEach items="${result}" var="store">
						<div class="goods-box mb-3 mr-2">
							${store.name}<br> ${store.phoneNumber}<br>
							${store.address}<br>
						</div>
					</c:forEach>
				</div>
			</section>
		</div>
		<footer class="d-flex align-items-center">
			<div class="copyright ml-4">
				<small class="text-secondary"> 우와한 형제 <br> 고객센터
					1500-1500
				</small>
			</div>
		</footer>
	</div>
</body>
</html>
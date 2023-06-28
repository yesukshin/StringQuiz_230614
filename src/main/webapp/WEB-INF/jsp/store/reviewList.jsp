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
		<header
			class="col-10 d-flex justify-content-center align-items-center">

			<h1 class="text-white">배탈의 민족</h1>

		</header>
		<div class="contents d-flex">
			<%-- 가게정보   mt-4 d-flex justify-content-center --%>
			<section class="col-10 mt-3 justify-content-center">
				<h1>${name}리뷰</h1>
				<div>
					<c:choose>
						<c:when test="${empty result}">
							<div class="mt-4">
								<h4>
									<b>작성된 리뷰가 없습니다.</b>
								</h4>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach items="${result}" var="review">
								<div class="goods-box1 mb-3 mr-2">
									<span class="font-weight-bold">${review.userName}</span>

									<%-- 별 표시 --%>
									<div class="star-area d-inline">
										<c:set var="point" value="${review.point}" />
										<c:forEach begin="1" end="5">
											<c:choose>
												<c:when test="${point > 0.5}">
													<img src="/image/star_fill.png" width="20"
														alt="star">
													<c:set var="point" value="${point - 1}" />
												</c:when>
												<c:when test="${point == 0.5}">
													<img src="/image/star_half.png" width="20">
													<c:set var="point" value="${point - 0.5}" />
												</c:when>
												<c:when test="${point == 0}">
													<img src="/image/star_empty.png" width="20">
												</c:when>
											</c:choose>
										</c:forEach>
									</div>
                                    <small class="text-secondary d-block my-2"><fmt:formatDate value="${review.createdAt}"
										pattern="yyyy년 MM월 dd일" /></small>
									<div class="my-2">${review.review}</div>
									<small class="menu-box rounded p-1">${review.menu}</small>
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
				<h4>
					<b>(주)우와한 형제</b>
				</h4>
				<small class="text-dark"> 고객센터 1500-1500 </small>
			</div>
	</div>
</body>
</html>
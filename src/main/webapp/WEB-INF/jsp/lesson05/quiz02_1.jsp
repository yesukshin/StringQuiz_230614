<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
		integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
		crossorigin="anonymous">
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>
	<meta charset="UTF-8">
	<title>멤버쉽</title>
	</head>
	<body>
		<div class="container">
			<h1>멤버쉽</h1>
			<table class="table text-center">
		 		<thead>
					<tr class="row">
						<th class="col-3">이름</th>
						<th class="col-3">전화번호</th>
						<th class="col-3">등급</th>
						<th class="col-3">포인트</th>
		     		</tr>
				</thead>		
				<%-- 등급이 VIP인경우 글씨를 빨간색으로, 등급이 GOLD인경우 노란색으로 표시하세요. --%>
		        <%--  포인트가 5000점 이상이면 포인트를 파란색으로 표시하세요.--%>
				<tbody>
					<c:forEach items="${membership}" var="member" varStatus="status">
						<tr class="row">
						    <td class="col-3">${member.name}</td>
							<td class="col-3">${member.phoneNumber}</td>
							<td class="col-3">
								<c:choose>
									<c:when test="${member.grade == 'VIP'}">
									   <span class='text-danger'>${member.grade}</span>
							        </c:when>
								    <c:when test="${member.grade == 'GOLD'}">
									   <span class='text-warning'>${member.grade}</span>
									 </c:when>   
								    <c:otherwise>
								      <span>${member.grade}</span>
									</c:otherwise>
								</c:choose>
							</td>
							<td class="col-3">
							<c:if test = "${member.point > 5000}" >
								 <span class="text-primary">${member.point}p</span>
							</c:if>
							<c:if test = "${member.point <= 5000}" >
								 <span>${member.point}p</span>
							</c:if>
							</td>
		     			</tr>
		     		</c:forEach>
				</thead>
			</table>	
		</div>	
	</body>
</html>



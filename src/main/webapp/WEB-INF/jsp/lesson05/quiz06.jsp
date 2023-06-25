<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class = "container">
 	<h1>회원정보 리스트</h1>
 	<table class= "table text-center" >
 		<thead>
 			<tr>
	 			<th>No</th>
	 			<th>이름</th>
	 			<th>전화번호</th>
	 			<th>국적</th>
	 			<th>이메일</th>
	 			<th>자기소개</th>
 			</tr>
 		</thead>
 		<tbody>
 		<%--국적의 삼국시대 를 삼국 - 형태로 변경하세요.
			이메일 주소의 id 부분을 굵게 표시하세요.
			전화번호가 010 으로 시작하지 않으면 유효하지 않은 전화번호 라고 표시하세요.
			자기소개의 내용을 15자까지 표시하세요.
			자기소개가 15자가 넘어 갈경우 뒤에 ... 을 표시하세요.
        --%>
 			<c:forEach items="${members}" var = "mem" varStatus="status" >
	 			<tr>
	 				<td>${status.count}</td>	
	 				<td>${mem.name}</td>
	 				<td>${mem.phoneNumber}</td>
	 				<td>
	 				 <c:set var="nationality" value="${mem.nationality}" />
	 				 ${fn:replace(nationality,'삼국시대','삼국 -')}	 				
	 				</td>
	 				<td>
	 				<c:set var="email" value="${mem.email}" /> 
	 				<b>${fn:split(email,'@')[0]}</b>@${fn:split(email,'@')[1]}	 				 				
	 				</td>	 				
	 				<td>
	 				<c:set var="introduce" value="${mem.introduce}" />  
	 				<c:if test="${fn:length(introduce) > 15}">
	 				   ${fn:substring(introduce,0,16)}...	
	 				</c:if>
	 				<c:if test="${fn:length(introduce) <= 15}">
	 				   ${fn:substring(introduce,0,16)}
	 				</c:if>
	 				</td>	 			
	 			</tr> 
 			</c:forEach>			
 		</tbody>
 	</table>
 </div>
</body>
</html>
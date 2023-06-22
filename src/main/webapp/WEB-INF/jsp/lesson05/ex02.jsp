<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl2</title>
</head>
<body>
<c:set var="num1" value="36" />
<c:set var="num2" value="3" />
<c:set var="num3" value="${(num1+num2)/2}"  />
<c:set var="num4" value="${(num1*num2)}"  />
첫번째 숫자 : <c:out value="${num1}" /><br>
두번째 숫자 : <c:out value="${num2}" /><br>
세번째 숫자 : <c:out value="${num3}" /><br>
<h3> 더하기 : "${num1+num2}" </h3>
<h3> 빼기 :  "${num1-num2}" </h3>
<h3> 곱하기 : "${num1*num2}" </h3>
<h3> 나누기 : "${num1/num2}"</h3> 

<c:out value="<title>core out</title>" escapeXml="true" />

<c:if test="${num3 > 10}">
     <h1> <c:out value="${num3}" />  </h1>
</c:if>
<c:if test="${num3 <  10}">
     <h3> <c:out value="${num3}" />  </h3>
</c:if>
<c:if test="${num4 >  100}">
    <c:out value="<script>alert('너무 큰 수입니다');</script>" escapeXml="false"/><br> 
</c:if>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가입자 정보</title>
</head>
<body>
   <div class="container"> 
      <h1>가입자정보</h1>
     
      <img src="${seller.profileImageUrl}" alt="프로필 이미지" width="300">
      <div class="display-3">${seller.nickname}</div>
      <div class="display-4 test-warning font-weight-bold">${seller.temperature}</div>
	</body>
</html>
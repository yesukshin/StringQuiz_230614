<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="container">
 <h1>판매원 추가</h1>
 <form method="post" action = "/lesson04/quiz01/add_seller">
 	<div class="form-group">
 		<span>닉네임</span>
 	 	<input type="text" name = "nickname" class ="form-control" col-3>
 	</div>
    <div class="form-group">
 	 	<span>프로필사진URL</span>
 	 	<input type="text" name = "profile_Image_Url" class ="form-control" col-9>
 	</div>
 	<div class="form-group">
 	 	<span>매너온도</span>
 	 	<input type="text" name = "temperature" class ="form-control" col-3>
 	</div>
    <input type="submit" class="btn btn-primary" value="추가">

 </form>
 </div>
</body>
</html>
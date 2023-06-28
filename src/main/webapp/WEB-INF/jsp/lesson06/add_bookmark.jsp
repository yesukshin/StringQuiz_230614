<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<%--ajax를 사용하려면 jquery 원본필요 --%>
<script src="https://code.jquery.com/jquery-3.7.0.js"
	integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>북마크</title>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가하기</h1>
		<!--<form method="post" action="/lesson06/quiz01/add_user">  -->
			<div class="form-group">
				<label for="name">제목</label> <input type="text" id="name"
					name="name" class="form-controll col-10" placeholder="제목을 입력하세요">
			</div>
			<div class="form-group">
				<label for="url">주소</label> <input type="text" id="url"
					name="url" class="form-controll col-10" placeholder="주소를 입력하세요">
			</div>
			<!-- AJAX통신을 호출할때는 반드시 버튼을 button타입으로 지정한다(form -->
			<!-- <input type="submit" class="btn btn-info" value="회원가입"> -->
			<input type="button" id="addBtn" class="btn btn-info" value="추가">
		<!-- </form> -->
	</div>

	<script>
		$(document).ready(function() {
			$('#addBtn').on('click', function() {

				//validation
				let name = $('#name').val().trim();
				let url = $('#url').val().trim();

				console.log(name);
				console.log(url);
				
				if (name=='') {
					alert("제목을 입력하세요");
					return;					
				}
				
				if (url=='') {
					alert("주소를 입력하세요");
					return;					
				}
				
				if(!url.startsWith("http") && !url.startsWith("https")){
					alert("주소를 확인하세요");
					return;	
				}

				 $.ajax({
					// request
					type : "POST",
					url : "/lesson06/quiz01/add_bookmark",
					data : {
						"name" : name,
						"url"  : url
					},
					// response 
					success : function(data) {
						if (data == "성공") {
							location.href = "/lesson06/quiz01/bookmark_list_view";
						} else {
							alert("북마크오류 실패했습니다.");
						}
					},
					error : function(xhr, status, error) {
						alert("북마크 오류");
					}
				});
			});
		});
	</script>
</body>
</html>
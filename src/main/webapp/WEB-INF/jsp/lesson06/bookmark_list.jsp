<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
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
	<h1>즐겨찾기 목록</h1>
		<table class="table text-center"  id='testTable'>
			<thead>
				<tr>
					<th>NO</th>
					<th>이름</th>
					<th>주소</th>
					<th>   </th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bookmarkList}" var="bookmark">
					<tr>
						<td>${bookmark.id}</td>							
						<td>${bookmark.name}</td>
						<td><a href="${bookmark.url}">${bookmark.url}</a></td>
						<td>
							<!-- <div class="checkBtn"><button class="deleteBtn bg-danger text-white">삭제</button></div> -->
							<button class="checkBtn bg-danger text-white">삭제</button>
						</td>							
					</tr>
                </c:forEach>
			</tbody>
		</table>
	</div>
	
	<script>
	
	$(".checkBtn").click(function(){ 
		// 삭제시 확인 메시지
		if(confirm("삭제하시겠습니까?")){
				var checkBtn = $(this);				
				// checkBtn.parent() : checkBtn의 부모는 <td>이다.
				// checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
				var tr = checkBtn.parent().parent();
				var td = tr.children();
				
				console.log("클릭한 Row의 모든 데이터 : "+tr.text());
				
				// 버튼 클릭시 Row 값 가져오기
				var id = td.eq(0).text();
				var name = td.eq(1).text();
				var url = td.eq(2).text();
				
				//삭제하기 버튼 클릭시 해당 row삭제
				$.ajax({
					// request
					type : "GET",
					url : "/lesson06/quiz01/delete_bookmark",
					data : {
						"id" : id
					},
					// response 
					success : function(data) {
						if (data.result == "성공") {
							//삭제 성공후 다시 조회
							location.href = "/lesson06/quiz01/bookmark_list_view";
						} else {
							alert("북마크 삭제처리 실패했습니다.");
						}
					},
					error : function(xhr, status, error) {
						alert("북마크 삭제하는데 실패했습니다.");
					}
				});
		}else{
			return;
		}
	});

	</script>
</body>
</html>
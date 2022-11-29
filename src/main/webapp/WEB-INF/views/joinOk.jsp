<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX Napmkmk</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css"> 
</head>
<body>
<%@ include file="inc/header.jsp" %>

<div class="wrapper">
	<div class="visualWraper">
		<p class="right">
  			<img src="${pageContext.request.contextPath}/resources/img/crt_05.png">
  		</p>
  		<h2> 가입을 축하드립니다.</h2>		
	</div>
	
	<div class="center">
			
							${mname } 님 회원 가입을 축하드립니다.<br>
							가입하신 아이디는 ${mid }입니다
					
	</div>
</div>
		
		

<%@ include file="inc/footer.jsp" %>
</body>
</html>
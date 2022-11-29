<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX Napmkmk</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/join.js"></script>
</head>
<body>
<%@ include file="inc/header.jsp" %>


<div class="wrapper mat100">
	<p class="right">
  		<img src="${pageContext.request.contextPath}/resources/img/crt_02.png">
  	</p>
  	<h2 class="center">회원가입</h2>
  	<div class="res_tbl_wrap form">
	  	<table>
	  	 <colgroup>
	        <col style="width:30%" >
	        <col style="width:60%" >
	      </colgroup>
	      
			<form action="joinOk" method="post" name="join_frm">
				<tr>
					<td><span class="lb_txt">아이디</span></td>
					<td data-label="아이디"><input class="input_type01" type="text" name="mid"></td>
				</tr>
				<tr>
					<td><span class="lb_txt">비밀번호</span></td>
					<td data-label="비밀번호"><input class="input_type01" type="password" name="mpw"></td>
				</tr>
				<tr>
					<td><span class="lb_txt">비밀번호 확인</span></td>
					<td data-label="비밀번호 확인"><input class="input_type01" type="password" name="mpw_check"></td>
				</tr>
				<tr>
					<td><span class="lb_txt">이름</span></td>
					<td data-label="이름"><input class="input_type01" type="text" name="mname"></td>
				</tr>
				<tr>
					<td><span class="lb_txt">이메일</span></td>
					<td data-label="이메일"><input class="input_type01" type="text" name="memail"></td>
				</tr>
										
				<tr>
					<td colspan="2" style="text-align:center">
						<input class="button_type01" type="button" value="가입완료" onclick="joinCheck()">&nbsp;&nbsp;
						<input class="button_type01" type="submit"  value="로그인" onclick="script:window.location='login'">
					</td>
				</tr>
			</form>
	</table>
	</div>


</div>




							
							
<%@ include file="inc/footer.jsp" %>
</body>
</html>
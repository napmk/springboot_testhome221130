<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX Napmkmk</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/join.js"></script>
</head>
<body>
<%@ include file="inc/header.jsp" %>
<div class="wrapper mat100">
	<div class="visualWraper">
		<p>
  			<img src="${pageContext.request.contextPath}/resources/img/crt_04.png">
  		</p>
  		<h2>게시판</h2>		
	</div>

	<table width="400" border="0" cellspacing="0" cellpadding="10">
		<form action="memberModifyOk" method="post" name="join_frm">
			<tr>
				<td><span class="lb_txt">아이디</span></td>
				<td><input class="input_type01" type="text" name="mid" value="${memberDto.mid }" readonly="readonly"></td>
			</tr>
			<tr>
				<td><span class="lb_txt">비밀번호</span></td>
				<td><input class="input_type01" type="password" name="mpw"></td>
			</tr>
			<tr>
				<td><span class="lb_txt">비밀번호 확인</span></td>
				<td><input class="input_type01" type="password" name="mpw_check"></td>
			</tr>
			<tr>
				<td><span class="lb_txt">이름</span></td>
				<td><input class="input_type01" type="text" name="mname" value="${memberDto.mname }"></td>
			</tr>
			<tr>
				<td><span class="lb_txt">이메일</span></td>
				<td><input class="input_type01" type="text" name="memail" value="${memberDto.memail }"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input class="button_type01" type="button" value="수정완료" onclick="joinCheck()">&nbsp;&nbsp;
					<input class="button_type01" type="submit"  value="취소" onclick="script:window.location='index'">
				</td>
			</tr>
	   </form>
							
		</table>
</div>

							
							
<%@ include file="inc/footer.jsp" %>
</body>
</html>
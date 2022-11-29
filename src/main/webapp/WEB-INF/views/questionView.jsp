<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX Napmkmk</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
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
	<div class="res_tbl_wrap">
		<table width="400" border="0" cellspacing="0" cellpadding="10">
			<form action="questionModify" method="post" name="board_frm">
			<input type="hidden" value="${qDtos.qnum }" name="qnum">
				<tr>
					<td><span class="lb_txt">아이디</span></td>
					<td>${qDtos.qid }</td>
				</tr>
				<tr>
					<td><span class="lb_txt">이름</span></td>
					<td>${qDtos.qname }</td>
				</tr>
				<tr>
					<td><span class="lb_txt">내용</span></td>
					<td><textarea class="textarea_type01" cols="30" rows="5" name="qcontent" readonly="readonly">${qDtos.qcontent }</textarea></td>
				</tr>
				<tr>
					<td><span class="lb_txt">이메일</span></td>
					<td>${qDtos.qemail }</td>
				</tr>
				<tr>
					<td><span class="lb_txt">가입날짜</span></td>
					<td>${qDtos.qdate }</td>
				</tr>
				<tr>
					<td colspan="2">
						<%
						String boardId= (String)request.getAttribute("qId");
						if(boardId.equals("GUEST")){ //로그인안됨 
						%>
						<input class="button_type01" type="submit" value="수정">&nbsp;&nbsp;
						<input class="button_type01" type="button" value="삭제" onclick="script:window.location='questionDelete?qnum=${qDtos.qnum}'">&nbsp;&nbsp;
						<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
						<%
						} else if ((sessionId != null) && sessionId.equals(boardId)){
						%>
						<input class="button_type01" type="submit" value="수정">&nbsp;&nbsp;
						<input class="button_type01" type="button" value="삭제" onclick="script:window.location='questionDelete?qnum=${qDtos.qnum}'">&nbsp;&nbsp;
						<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
						<%
						} else {
						%>
						<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
						<%
						}
						%>	
						</td>
				</tr>
				</form>
			</table>
		</div>	
</div>	

	

<%@ include file="inc/footer.jsp" %>
</body>
</html>
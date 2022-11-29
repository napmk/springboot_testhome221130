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
<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20" class="mt50">
		<tr>
			<td class="center">
				<span class="title01">Napmkmk Profile</span>
			</td>
		</tr>
		<tr>
			<td class="center">
				<span class="title02">Hello Hello Totory World! Hello Hello Totory World!</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
						<center>
							<table width="400" border="0" cellspacing="0" cellpadding="10">
								<form action="" method="post" name="join_frm">
									<tr>
										<td colspan="2">회원 정보 수정 완료</td>
									</tr>
									<tr>
										<td><span class="lb_txt">MEMBER ID</span></td>
										<td> ${memberDto.mid } </td>
									</tr>
									<tr>
										<td><span class="lb_txt">PASSWORD</span></td>
										<td>${memberDto.mpw }</td>
									</tr>
									<tr>
										<td><span class="lb_txt">NAME</span></td>
										<td>${memberDto.mname }</td>
									</tr>
									<tr>
										<td><span class="lb_txt">E-MAIL</span></td>
										<td>${memberDto.memail }</td>
									</tr>
									
									<tr>
										<td colspan="2">
										    <input class="button_type01" type="button" value="정보수정" onclick="script:window.location='memberModify'">&nbsp;&nbsp;
											<input class="button_type01" type="submit"  value="취소" onclick="script:window.location='index'">
											
										</td>
									</tr>
								</form>
							
							</table>
							</center>
						</td>
					</tr>
				</table>
				</center>
			</td>
		</tr>
	</table>
</center>
<%@ include file="inc/footer.jsp" %>
</body>
</html>
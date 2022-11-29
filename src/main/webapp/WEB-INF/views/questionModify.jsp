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
								<form action="questionModifyOk" method="post" name="board_frm">
								<input type="hidden" value="${qDtos.qnum }" name="qnum">
									<tr>
										<td><span class="lb_txt">ID</span></td>
										<td><input class="input_type01" type="text" name="qid" value="${qDtos.qid }" readonly="readonly"></td>
									</tr>
									<tr>
										<td><span class="lb_txt">NAME</span></td>
										<td><input class="input_type01" type="text" name="qname" value="${qDtos.qname }" ></td>
									</tr>
									<tr>
										<td><span class="lb_txt">QUESTION</span></td>
										<td><textarea class="textarea_type01" cols="30" rows="5" name="qcontent" >${qDtos.qcontent }</textarea></td>
									</tr>
									<tr>
										<td><span class="lb_txt">E-MAIL</span></td>
										<td><input class="input_type01" type="text" name="qemail" value="${qDtos.qemail }" ></td>
									</tr>
									<tr>
										<td><span class="lb_txt">DATE</span></td>
										<td><input class="input_type01" type="text" name="qdate" value="${qDtos.qdate }"  readonly="readonly"></td>
									</tr>
									<tr>
										<td colspan="2">
											<input class="button_type01" type="submit" value="수정완료">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="삭제" onclick="script:window.location='questionDelete?qnum=${qDtos.qnum}'">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="글목록" onclick="script:window.location='list'">
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
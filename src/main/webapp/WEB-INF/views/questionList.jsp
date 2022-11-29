<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX Napmkmk</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/content.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/board.css"> 
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
	    <table>
	      <colgroup>
	        <col style="width:10%" >
	        <col style="width:15%" >
	        <col style="width:45%" >
	        <col style="width:15%" >
	        <col style="width:15%" >
	      </colgroup>
	      <thead>
	        <tr>
	          <th>번호</th>
	          <th>아이디</th>
	          <th>내용</th>
	          <th>이름</th>
	          <th>날짜</th>
	        </tr>
	      </thead>
	      <tbody>
	       <c:forEach items="${qDtos}" var="qdto">
	        <tr>
	          <td scope="row" data-label="번호">${qdto.qnum }</td>
	          <td data-label="아이디">${qdto.qid }</td>
	          <td data-label="내용">
					<a href="questionView?qnum=${qdto.qnum }">
						<c:choose> 
						     <c:when test="${fn:length(qdto.qcontent) > 20}">
						              <c:out value="${fn:substring(qdto.qcontent,0,19) }"></c:out>... 
						      </c:when>
						            <c:otherwise>
						                <c:out value="${qdto.qcontent }"></c:out>
						          </c:otherwise>
						 </c:choose>
					</a>
				</td>
	          <td data-label="이름">${qdto.qname }</td>
	          <td data-label="날짜"><c:out value="${fn:substring(qdto.qdate,0,10) }"></c:out></td>
	        </tr>
	       </c:forEach>
	      
	      </tbody>
	    </table>
	</div>
	
</div>		
<%@ include file="inc/footer.jsp" %>
</body>
</html>
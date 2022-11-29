<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="author" content="Adtile">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Napmkmk</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/title.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
   <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ie.css">
    <![endif]--> 
 <script src="${pageContext.request.contextPath}/resources/js/responsive-nav.js"></script>
</head>
<body>

<%@ include file="inc/header.jsp" %>
    <section id="home">
     	<div class="wrapper">
     		<p class=main_img><img src="${pageContext.request.contextPath}/resources/img/main.jpg"></p>
       </div>
    </section>
<!-- about  영역 -->
    <section id="about">
      <h1>About</h1>
      <div class="wrapper">
     		내 소개 입니다.
       </div>
    </section>
 <!-- about  영역 -->   

    <section id="projects">
      <h1>Projects</h1>
    </section>

    <section id="blog">
      <h1>Blog</h1>
    </section>
  
  <!-- board  영역 -->  
    <section id="board">
      <h1>Board</h1>
      
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
    </section>
<!-- //board  영역 -->    
     <section id="join">
      <h1>Join</h1>
    </section>
    
     <section id="login">
      <h1>Login</h1>
    </section>

<%@ include file="inc/footer.jsp" %>
    <script src="${pageContext.request.contextPath}/resources/js/fastclick.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/scroll.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/fixed-responsive-nav.js"></script>
</body>
</html>
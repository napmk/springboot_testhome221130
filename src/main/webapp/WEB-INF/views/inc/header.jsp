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
	<%
		String sessionId = (String)session.getAttribute("memberId");
	%>
   <header>
      <a href="/" class="logo" data-scroll>napmkmk</a>
      <nav class="nav-collapse">
        <ul>
          <li class="menu-item active"><a href="/" data-scroll>Home</a></li>
          <li class="menu-item"><a href="profile" data-scroll>Profile</a></li>
          <li class="menu-item"><a href="contact" data-scroll>Project</a></li>
          <li class="menu-item"><a href="list" >Board</a></li>
          <li class="menu-item">
          		<%
          			if(sessionId == null){
          		%>
          		<a href="join" >Join</a>
          		<%
          			} else {
          		%>
          		<a href="memberModify" >Modify</a>
          		<%
          			}
          		%>
          </li>
          <li class="menu-item">
          		<%
          			if(sessionId == null){
          		%>
          		<a href="login" >
          			Login
          		</a>
          		<%
          			} else {
          				
          		%>
          		<a href="logout">logout</a>
          		<%
          			}
          		%>
          		
	        </li>
          
        </ul>
      </nav>
    </header>



    <script src="${pageContext.request.contextPath}/resources/js/fastclick.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/scroll.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/fixed-responsive-nav.js"></script>
</body>
</html>
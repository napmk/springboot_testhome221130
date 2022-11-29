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
</head>
<body>
<%@ include file="inc/header.jsp" %>
<div class="wrapper">
	<div class="visualWraper">
		<p class="right">
  			<img src="${pageContext.request.contextPath}/resources/img/crt_05.png">
  		</p>
  		<h2>로그인</h2>		
	</div>
	
	<div>
            <form action="loginOk" method="post">
                <ul class="my_order_num">
                  <li>
                      <div class="myorder_Box" id="wrap_arrive_adr">
                          <input name="mid"  type="text" maxlength="13" placeholder="아이디를 입력해주세요">
                      </div>
                  </li>
                    <li>
                        <div class="myorder_Box" id="wrap_arrive_adr">
                          <input name="mpw"  type="password" maxlength="13" placeholder="비밀번호를 입력해주세요">
                      </div>
                    </li>
                </ul>
                <div class="center">
                	<input class="button_type01" type="submit"  value="로그인">&nbsp;&nbsp;
					<input class="button_type01" type="button" value="회원가입" onclick="script:window.location='join'">
                </div>
            </form>
        </div>
        
						
				
				
</div>


<%@ include file="inc/footer.jsp" %>
</body>
</html>
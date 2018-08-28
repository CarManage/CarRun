<%@page import="com.yc.carrun.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Custom Login Form Styling</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/jquery.wysiwyg.old-school.css">

<!-- jQuery AND jQueryUI -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<link rel="stylesheet" href="css/style2.css">
<link rel="stylesheet" type="text/css" href="css/style3.css" />
<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
<style>
@import url(http://fonts.googleapis.com/css?family=Ubuntu:400,700);
body {
	background: #563c55 url(images/blurred.jpg) no-repeat center top;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
}
</style>
</head>

<body>
<div id="head">
		<div class="left"> <a class="button profile"><img src="images/huser.png" alt=""></a> 登录界面 </div>
<div style="float:right"></div></div>
<div class="container"   >

 
	<section class="main"  >
 <!-- 注册码验证 -->
		<form class="form-3" style="position:relative;top:100px; "name="loginForm" action="pass.do" method="post" enctype="multipart/form-data">
					<p class="clearfix">
		 
			 
			<%if(request.getAttribute("msg") != null){ %>
	 
		  	<label for="login">message:</label>
		  		<input style="color: red" type="text" id="login" value="<%=request.getAttribute("msg") %>">	 
				
			<%}%>
	 
				<label for="login">pin</label>
				<!-- user的信息 -->
				 <input type="hidden" name="uname" id="uname"   value=<%=request.getAttribute("uname") %>>
				 <input type="hidden" name="upass" id="upass"   value=<%=request.getAttribute("upass") %>>
				 <input type="hidden" name="name" id="name"   value=<%=request.getAttribute("name") %>>
				 <input type="hidden" name="type" id="type"   value=<%=request.getAttribute("type") %>>
				 <input type="hidden" name="email" id="email"   value=<%=request.getAttribute("email") %>>
				 <input type="hidden" name="Idcard" id="Idcard"   value=<%=request.getAttribute("Idcard") %>>
				
				<!--正确的pin码  -->
				<input type="hidden" name="pin" id="pin"   value=<%=request.getAttribute("pin") %>>
		        <!-- 所填写的pin码 -->
				<input type="text" name="pin1" id="pin1" placeholder="验证码">
 
				<input type="submit" name="submit" value="submit">
			</p>       
		</form>​
	</section>
	
</div>
</body>
</html>
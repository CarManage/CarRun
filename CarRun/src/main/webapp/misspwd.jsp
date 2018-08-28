<%@page import="com.yc.carrun.biz.myUtils"%>
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
<script type="text/javascript">
 
  
                 </script>
</head>

<body>
<div id="head">
		<div class="left"> <a class="button profile"><img src="images/huser.png" alt=""></a> 登录界面 </div>
<div style="float:right"><a href="user.do?op=login">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;<a   href="user.do?op=reg">Sign Up</a></div></div>
<div class="container"   >
 
 
	<section class="main"  >
 
		<form class="form-3" style="position:relative;top:100px; "name="loginForm" action="miss.do" method="post" enctype="multipart/form-data">
					<p class="clearfix">
					<%if(request.getAttribute("mssg") != null){ %>
	 
		  	<label for="login">error:</label>
		  		<input style="color: red" type="text" id="login" value="<%=request.getAttribute("msg") %>">	 
				
			<%}%>
	<%if(request.getAttribute("msg") != null){ %>
	 
		  	<label for="login">message:</label>
		  		<input style="color: red" type="text" id="login" value="<%=request.getAttribute("msg") %>">	 
				
			<%}%>
	          <label for="login ">message:</label>
		  		<input style="color:red" type="text" id="msgs" value="请输入忘记密码的用户名">	 
				
					<label for="login">Username</label>
				<input type="text" name="uname" id="login" placeholder="Username">
			  
				<input type="submit" name="submit" value="submit">
			</p>       
		</form>​
	</section>
	
</div>
</body>
</html>
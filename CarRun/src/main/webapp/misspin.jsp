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
<script >

 
         //校验密码
         function checkCode(){
             var code=document.getElementById("code").value;
             var codeSpan=document.getElementById("codeSpan")
             if(code==''){
                 codeSpan.innerHTML="<font size='1' color='red'>密码不能为空</font>"
             }else if(code.length<6){
                 codeSpan.innerHTML="<font size='1' color='red'>密码至少六位</font>"
             }else{
                 codeSpan.innerHTML="<font size='1' color='red'>符合要求</font>"
                 return true;
             }
         }
 // 验证码
 
                 function checkpin(){
                    var number=document.getElementById("pin").value;
                    var pinSpan=document.getElementById("pinSpan")
                   
                    if( number==""){
                    	pinSpan.innerHTML="<font size='1' color='red'>验证码不能为空</font>"
                    } else{
                    	pinSpan.innerHTML="<font size='1' color='red'>符合要求</font>"
                        return true;
                    }
                } 
                 //校验所有信息，决定表单是否提交
                 function  checkForm(){
                     if(checkpin()&&checkCode()){
                         return true;
                     }
                     return false;
                 }
                 </script>
</head>

<body>
<div id="head">
		<div class="left"> <a class="button profile"><img src="images/huser.png" alt=""></a> 登录界面 </div>
<div style="float:right"><a href="user.do?op=login">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;<a   href="user.do?op=reg">Sign Up</a></div></div>
<div class="container"   >

 
	<section class="main"  >
 
	<form class="form-3" onsubmit="return checkForm()" style="position:relative;top:100px; "name="regForm" action="resetpwd.do" method="post" enctype="multipart/form-data">				
 
<p class="clearfix">
<!-- 传递过来的真正验证码 -->
	     <input type="hidden" name="pin1" id="pin1"   value=<%=request.getAttribute("pin") %>>
         <input type="hidden" name="uname" id="uname"   value=<%=request.getAttribute("uname") %>>
      		<%if(request.getAttribute("msg") != null){ %> 
		  	<label for="login">message:</label>
		  		<input style="color: red" type="text" id="login" placeholder="<%=request.getAttribute("msg") %>">	 
			<%}%>
	          <label for="login ">message:</label>
		  		<input style="color:red" type="text" id="login" value="请输入你的新密码">	 
					<label for="password">Password</label>
				<input type="password" name="upass" id="code" placeholder="Password" class="required" onblur="checkCode()"> 
			   <span id="codeSpan"></span><br/>
			   <label for="pin">PIN</label>
				<input type="text" name="pin" id="pin" placeholder="验证码" class="required"  onblur="checkpin()">
				<span id="pinSpan"></span><br/>
			 
				<input type="submit" name="submit" value="submit">
			</p>       
		</form>​
	</section>
	
</div>
</body>
</html>
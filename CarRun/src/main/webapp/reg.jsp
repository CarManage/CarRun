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
<script>
            //校验用户名
            function checkName(){
                var name=document.getElementById("name").value;
                var nameSpan=document.getElementById("nameSpan")
                //正则表达式判断用户名
                var reg=/^\w+$/;
                if(name.length<1){
                        nameSpan.innerHTML="<font size='1' color='red'>用户名不能为空</font>"
                    }else if(name.length<6){
                        nameSpan.innerHTML="<font size='1' color='red'>用户名要至少六位</font>"
                    }else if(!reg.test(name)){
                        nameSpan.innerHTML="<font size='1' color='red'>只能由字母数字下划线组成</font>"
                    }else{
                        nameSpan.innerHTML="<font size='1' color='red'>符合要求</font>"
                        return true;
                    }
                }
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
            //校验邮箱
            function checkEmail(){
                var email=document.getElementById("email").value;
                var emailSpan=document.getElementById("emailSpan")
                //用正则判断邮箱格式
                var reg=/^\w+[@]\w+[.comn]{3,4}$/;
                if(email==''){
                        emailSpan.innerHTML="<font size='1' color='red'>邮箱不能为空</font>"
                }else if(!reg.test(email)){
                    emailSpan.innerHTML="<font size='1' color='red'>邮箱格式不正确</font>"
                }else{
                    emailSpan.innerHTML="<font size='1' color='red'>符合要求</font>"
                    return true;
                }
            }
            //验证昵称
              function checknames(){
                var name=document.getElementById("names").value;
                var namesSpan=document.getElementById("namesSpan")
               
                if( name==""){
                        namesSpan.innerHTML="<font size='1' color='red'>昵称不能为空</font>"
                }else if(name.length>6){
                	
                	  namesSpan.innerHTML="<font size='1' color='red'>昵称不能过长</font>"
                }else{
                	namesSpan.innerHTML="<font size='1' color='red'>符合要求</font>"
                    return true;
                }
            }
                //验证身份证
                function checkID(){
                    var number=document.getElementById("idcard").value;
                    var IDSpan=document.getElementById("IDSpan")
                   
                    if( number==""){
                    	IDSpan.innerHTML="<font size='1' color='red'>身份证不能为空</font>"
                    }else if(number.length!=18){
                    	
                    	IDSpan.innerHTML="<font size='1' color='red'>格式不正确</font>"
                    }else{
                    	IDSpan.innerHTML="<font size='1' color='red'>符合要求</font>"
                        return true;
                    }
                }
            /*    // 验证码
                 function checkpin(){
                    var number=document.getElementById("pin").value;
                    var pinSpan=document.getElementById("pinSpan")
                   
                    if( number==""){
                    	IDSpan.innerHTML="<font size='1' color='red'>验证码不能为空</font>"
                    } else{
                     
                        return true;
                    }
                } */
            //校验所有信息，决定表单是否提交
            function checkForm(){
                if(checkName()&&checkCode()&&checkEmail()&&checkID()&&checknames()){
                    return true;
                }
                return false;
            }
        </script>
</head>

<body>
<div id="head">
		<div class="left"> <a class="button profile"><img src="images/huser.png" alt=""></a> 注册界面 </div>
<div style="float:right"><a href="user.do?op=login">Login</a></div></div>
<div class="container"   >

 
	<section class="main"  >
 
		<form class="form-3" onsubmit="return checkForm()" style="position:relative;top:100px; "name="regForm" action="forms.do" method="post" enctype="multipart/form-data">
					<%if(request.getAttribute("msg") != null){ %> 
		  	<label for="login">error:</label>
		  		<input style="color: red" type="text" id="login" placeholder="<%=request.getAttribute("msg") %>">	 
			<%}%>
		
					<p class="clearfix">
				<label for="login">Username</label>
				<input type="text" name="uname" id="name" placeholder="Username" class="required" onblur="checkName()">
				  <span id="nameSpan" ></span><br/>
		
				<label for="password">Password</label>
				<input type="password" name="upass" id="code" placeholder="Password" class="required" onblur="checkCode()"> 
			   <span id="codeSpan"></span><br/>
			   
			  <label for="email">Email:</label>
            <input type="text" id="email" name="email" class="required"  placeholder="email" onblur="checkEmail()"/>
              <span id="emailSpan"></span><br/>
              
              <label for="name">昵称:</label>
            <input type="text" id="names" name="name" class="required"  placeholder="昵称" onblur="checknames()"/>
               <span id="namesSpan"></span><br/>
            
             <label for="idcard">身份证:</label>
            <input type="text" id="idcard" name="IDcard" class="required"  placeholder="身份证号码" onblur="checkID()"/>
	     <span id="IDSpan"></span><br/>
	   
				<input type="submit" name="submit" value="sign up">
		</p>  
		</form>​
	</section>
	
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<c:if test="${empty Chexing}">
			<jsp:forward page="/product/queryCars.do">
				<jsp:param value="" name="" />
			</jsp:forward>
		</c:if>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理系统</title>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/jquery.wysiwyg.old-school.css">

<!-- jQuery AND jQueryUI -->
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../js/min.js"></script>
<!--<script type="text/javascript" src="js/index.js"></script>-->
<script type="text/javascript" src="../js/main.js"></script>
<link rel="stylesheet" href="../css/style2.css">

</head>
<body>
<%@ include file="/top.jsp" %>
<%@ include file="/left.jsp" %>


<!--     内容      -->
<div id="content" class="white">
		<h1><img src="../images/posts.png" alt="">车型管理</h1>
		
		<!--操作栏-->
		<div class="bloc">
				<div class="title"> 新增车型 <a class="toggle"></a></div>
				<div class="content dashboard">		
				<div class="content">
					<form action="InCars.do?homo1=${param.homo1 }&homo2=${param.homo2}" method="post" enctype="multipart/form-data">
						<div class="input" style="300px;">
								<label for="file">选择车系</label>
								<input type="text" id="input1" value="${param.cxname }">
						</div>
						<div class="input">
								<label for="input1">车型名称</label>
								<input type="text" id="input1" name="name">
						</div>
						<div class="input">
								<label for="file">车型图片</label>
								<div class="uploader" id="uniform-file">
										<input type="file" id="file" name="img"size="20" style="opacity: 0;">
										<span class="filename"></span><span class="action">请选择图片</span></div>
						</div>
						<div class="input">
								<label for="input1">官方指导价（万元）</label>
								<input type="text" id="input1" name="price">
								<c:if test="${not empty msg}">
								<script type="text/javascript">alert("${msg}")</script>
								</c:if>
								<input type="hidden" name="homo1" value="${param.homo1 }">
								<input type="hidden" name="homo2" value="${param.homo2 }">
								<input type="hidden" name="baojia1" value="${param.baojia1 }">
								<input type="hidden" name="baojia2" value="${param.baojia2 }">
						</div>
						<div class="submit">
								<input type="submit" value="确定">
						</div>
					</form>
				</div>
				</div>
		</div>
		
		<div class="bloc">
				<div class="title"> 车系：${param.cxname } <a class="toggle"></a></div>
				<div class="content">
						<table>
								<thead>
										<tr>
												<th>图片</th>
												<th>车型名称</th>
												<th>官方指导价（万元）</th>
												<th>创建时间</th>
												<th>创建人</th>
												<th>操作</th>
										</tr>
								</thead>
								<tbody>
								 	<c:forEach items="${Chexing}" var="cx"	>
										<tr>
												<td><a href="../${cx.image }" class="zoombox">
														<image width="150" height="100" src="../${cx.image }" />
														</a></td>
												<td>${cx.name }</td>
												<td>${cx.price }</td>
												<td>${cx.time }</td>
												<td>${c.createman }</td>
												<td><a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" title="修改"><img src="../images/edit.png" alt=""></a><a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" title="删除"><img src="../images/delete.png" alt=""></a></td>
										</tr>
									</c:forEach>	
								</tbody>
						</table>
						<!-- <div class="left input">
            <a class="button">新增品牌</a>
        </div>-->
						<div class="pagination"> <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" class="prev">«</a> <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#">1</a> <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" class="current">2</a> ... <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#">21</a> <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#">22</a> <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" class="next">»</a> </div>
				</div>
		</div>
</div>
<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
</html>
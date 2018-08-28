<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<c:if test="${empty list}">
			<jsp:forward page="/product/queryAllchexi.do">
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
		<h1><img src="../images/posts.png" alt="">车系管理</h1>
		
		<div class="bloc">
				<div class="title"> 车系列表 <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" class="toggle"></a></div>
				<div class="content">
						<table>
								<thead>
										<tr>
												<th>车系名称</th>
												<th>报价(*万元)</th>
												<th>创建时间</th>
												<th>创建人</th>
												<th>所属品牌</th>
												<th>操作</th>
										</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="c"	>
										<tr>
										
												<td>${c.name }</td>
												<td>${c.baojia1 }-${c.baojia2 }</td>
												<td>${c.time }</td>
												<td>${c.createman }</td>
												<td><a href="../product/series.jsp?homo=${c.homo }">${c.pname }</a></td>
												<td><a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" title="修改"><img src="../images/edit.png" alt=""></a><a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" title="删除"><img src="../images/delete.png" alt=""></a></td>
										</tr>
									</c:forEach>
										
								</tbody>
						</table>
						<div class="pagination"> <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" class="prev">«</a> <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#">1</a> <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" class="current">2</a> ... <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#">21</a> <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#">22</a> <a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#" class="next">»</a> </div>
				</div>
		</div>
</div>
<br>
<div id="ui-datepicker-div" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
<br>
</html>
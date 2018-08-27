<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<c:if test="${empty Pinpai}">
	<jsp:forward page="/pinpai/queryPinpai.do">
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
</head>
<body>

	<script type="text/javascript" src="../js/main.js"></script>
	<link rel="stylesheet" href="../css/style2.css">
<%@ include file="/top.jsp" %>
<%@ include file="/left.jsp" %>



	<!--     内容      -->
	<div id="content" class="white">
		<h1>
			<img src="../images/posts.png" alt="">品牌管理
		</h1>
		<form action="Inpinpai.do" method="post" enctype="multipart/form-data">
			<div class="bloc">
				<div class="title">
					新增品牌<a class="toggle"></a>
				</div>
				<div class="content">
					<div class="input">
						<label for="file">品牌Logo</label>
						<div class="uploader" id="uniform-file">
							<input type="file" name="img" id="file" size="20"
								style="opacity: 0;"><span class="filename">No
								file selected</span><span class="action">Choose File</span>
						</div>
					</div>
					<div class="input">
						<label for="input1">品牌名称</label> <input type="text" id="input1"
							name="name">
					</div>
					<div class="submit">
						<input type="submit" value="确定">
					</div>
				</div>
			</div>
		</form>
		<div class="bloc">
			<div class="title">品牌列表</div>
			<div class="content">
				<table>
					<thead>
						<tr>
							<th>品牌logo</th>
							<th>品牌名称</th>
							<th>创建时间</th>
							<th>创建人</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${Pinpai}" var="v">
							<tr>
								<td><image width="85" height="73" src="../${v.logo }" /></td>
								<td><a href="../product/series.jsp?homo=${v.id }">${v.name }</a></td>
								<td>${v.time }</td>
								<td>${v.createman }</td>
								<td><a
									href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#"
									title="修改"><img src="../images/edit.png" alt=""></a><a
									href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#"
									title="删除"><img src="../images/delete.png" alt=""></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<!--<div class="left input">
            <a href="pinpai/insert.html" class="zoombox w450 h223">新增品牌</a>
        </div>-->
				<div class="pagination">
					<a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#"
						class="prev">«</a> <a
						href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#">1</a>
					<a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#"
						class="current">2</a> ... <a
						href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#">21</a>
					<a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#">22</a>
					<a href="http://www.grafikart.fr/demo/coreadmin/index.php?p=table#"
						class="next">»</a>
				</div>
			</div>
		</div>

	</div>

	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>BLOG
</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
<meta name="author" content="Carmen"/>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=path%>/public/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=path%>/public/assets/global/css/me.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="<%=path%>/public/assets/global/img/favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
<!-- BEGIN PAGE-HEADER -->
<%@include file="nav.html" %>
<!-- END PAGE-HEADER -->
<!-- BEGIN PAGE-BODY -->
<section class="page-body">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
			<block name="left">
			<div class="list-group">
				  <a href="<%=path%>/admin/articleAll"class="list-group-item active">
				    文章管理<i class="glyphicon glyphicon-chevron-right pull-right"></i>
				  </a>
				  <a href="<%=path%>/admin/articleAdd" class="list-group-item">文章发布<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
				  <a href="<%=path%>/admin/fLink" class="list-group-item ">友情链接<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
				  <a href="<%=path%>/admin/categoryManage" class="list-group-item">分类管理<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
			</div>
			</block>

			</div>
			<div class="col-md-9">
		   <block name="right">

	<ol class="breadcrumb">
				  <li>后台管理</li>
				  <li class="active">文章管理</li>
				    <li class="active">编辑</li>
				</ol>
<div class="container">
<div class="row">
<div class="col-md-12">
	 <form action="doEdit" method="post"> 
	<h4>文章内容</h4>
<textarea name="content" cols="100" rows="15"><%=request.getAttribute("content") %></textarea>
<br>
<br>
<br>
<br>
<br>
标题<input type="text" name="title" value="<%=request.getAttribute("title") %>">
<input type="submit" class="submit" value="提交">
<input type="hidden" name="id" value="<%=request.getAttribute("id") %>">


</form>
</div>

</div>
</div>
</block>
			</div>			
		</div>
	</div>
<div class="clearfix"></div>
</section>
<section class="page-footer">
	<div class="container">		
	</div>
</section>
<script src="<%=path%>/public/assets/plugins/jquery/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="<%=path%>/public/assets/plugins/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<script src="<%=path%>/public/assets/global/js/me.js" type="text/javascript"></script>
</body>
<!-- END BODY -->
</html>
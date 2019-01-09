<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path= request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="beans.category" %>
<%@page import="beans.friendLink" %>
<%@page import="dao.friendLinkDao" %>
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
				  <a href="<%=path%>/admin/articleAll"class="list-group-item">
				    文章管理<i class="glyphicon glyphicon-chevron-right pull-right"></i>
				  </a>
				  <a href="<%=path%>/admin/articleAdd" class="list-group-item">文章发布<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
				  <a href="<%=path%>/admin/fLink" class="list-group-item active">友情链接<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
				  <a href="<%=path%>/admin/categoryManage" class="list-group-item">分类管理<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
			</div>
			</block>	

			</div>
			<div class="col-md-9">
	<block name="right">		
				<ol class="breadcrumb">
				  <li>后台管理</li>
				  <li class="active">友情链接</li>
				</ol>
				
				<div class="row">
					<div class="col-md-2">链接名称</div>
					<div class="col-md-4">URL</div>
					<div class="col-md-3">显示</div>
					<div class="col-md-3">操作</div>
				</div>
				<hr>
			 <volist name="friendlink" id="l">
			 <% friendLinkDao fl = new friendLinkDao();
			 	ArrayList<friendLink> flList = fl.queryAllLink();
			 	for(friendLink flList1:flList){
			 %>
				<div class="row">
					<div class="col-md-2"><%=flList1.getName() %></div>
					<div class="col-md-4"><%=flList1.getUrl() %></div>
					<div class="col-md-3">
					<% if(flList1.getStatus()==0){ %>
					<i class="glyphicon glyphicon-remove"></i>
					<%}else{ %>
					<i class="glyphicon glyphicon-ok"></i>
					<%} %>
					</div>
					<div class="col-md-3">
					<% if(flList1.getStatus()==0){ %>
					<a href="">开启 </a>|
					<%}else{ %>
					<a href="">禁用 </a>| 
					<%} %>
					<a href="">删除</a></div>
				</div>
				<hr>
				<%} %>
			</volist>	
			<br><br><br><br><br>
				<h3>添加友情链接</h3>
				<form class="form-inline" action="" method="POST">
				  <div class="form-group">
				    <label for="exampleInputName2">链接名称</label>
				    <input type="text" class="form-control" id="exampleInputName2" name="linkname">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputEmail2">链接URL</label>
				    <input type="text" class="form-control" id="exampleInputEmail2" name="linkurl">
				  </div>
				  <button type="submit" class="btn btn-success btn-default">添加</button>
				</form>
</block>
	
			</div>			
		</div>
	</div>
<div class="clearfix"></div>
</section>
<%@include file="footer.html" %>
<script src="<%=path%>/public/assets/plugins/jquery/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="<%=path%>/public/assets/plugins/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<script src="./assets/global/js/me.js" type="text/javascript"></script>
</body>
<!-- END BODY -->
</html>
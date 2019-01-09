<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path= request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="beans.category" %>
<%@page import="dao.indexDao" %>
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
		    				</ol>
		    				<div class="row">
		    					<div class="col-md-2">分类</div>
		    					<div class="col-md-3">标题</div>
		    					<div class="col-md-3">发布时间</div>
		    					<div class="col-md-2">点击量</div>
		    					<div class="col-md-2">操作</div>
		    				</div>
		    				<hr>
		    				<% indexDao articleAll = new indexDao();		    					
								ArrayList<category> alist = articleAll.queryAllArticle();
								for(category list1:alist){
		    				%>		    				
		    					<div class="row">
		    						<div class="col-md-2"><%=articleAll.queryCategoryName(list1.getCategory_id())%></div>
		    						<div class="col-md-3" title="{$v['title']}"><%=list1.getTitle() %></div>
		    						<div class="col-md-3"><%=list1.getCreate_time() %></div>
		    						<div class="col-md-2"><%=list1.getHits() %></div>
		    						<div class="col-md-2">   				
		    						<a href="articleEdit?id=<%=list1.getId()%>">编辑 </a> 
		    						|<a href="doDelete?id=<%=list1.getId()%>">删除</a></div>
		    					</div>
		    					<hr>
		    			<%} %>
		    				<div class="row">
		    					<div class="pull-right"></div>
		    				</div>
		    		
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


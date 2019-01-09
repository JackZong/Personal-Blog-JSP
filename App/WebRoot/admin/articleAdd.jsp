<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path= request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="beans.category" %>
<%@page import="beans.nav" %>
<%@page import="dao.navDao" %>
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
				  <a href="<%=path%>/admin/articleAdd" class="list-group-item active">文章发布<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
				  <a href="<%=path%>/admin/fLink" class="list-group-item ">友情链接<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
				  <a href="<%=path%>/admin/categoryManage" class="list-group-item">分类管理<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
			</div>
			</block>
			</div>
			<div class="col-md-9">
		    <block name="right">	
		    <link rel="stylesheet" type="text/css" href="<%=path%>/public/assets/plugins/simditor/styles/font-awesome.css" />
		    <link rel="stylesheet" type="text/css" href="<%=path%>/public/assets/plugins/simditor/styles/simditor.css" />
		    <script type="text/javascript" src="<%=path%>/public/assets/plugins/simditor/scripts/js/jquery.min.js"></script>
		    <script type="text/javascript" src="<%=path%>/public/assets/plugins/simditor/scripts/js/module.js"></script>
		    <script type="text/javascript" src="<%=path%>/public/assets/plugins/simditor/scripts/js/uploader.js"></script>
		    <script type="text/javascript" src="<%=path%>/public/assets/plugins/simditor/scripts/js/simditor.js"></script>
				<ol class="breadcrumb">
				  <li>后台管理</li>
				  <li class="active">文章发布</li>
				</ol>
				<form class="form-horizontal" method="post" action="doAdd">
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">文章分类</label>
				    <div class="col-sm-10">
				      <select class="form-control" name="category_id">
				      <% navDao navAdd = new navDao(); 
				      	 ArrayList<nav> navAddList = navAdd.queryRootMenu(); 	
				    	 for(nav navPar:navAddList){	
				    		 ArrayList<nav> navAddList1 = navAdd.queryMenuByPar(navPar.getId());
				    		 if(navAddList1.size()==0){
				      %>
		      		 		 <option value="<%=navPar.getId()%>"><%=navPar.getName()%></option>
				      		<%}else{ %>
				      		<option value="<%=navPar.getId()%>"><%=navPar.getName()%></option>
				      		<% 
				      			for(nav navChild:navAddList1){
				      		%>			
				      				<option value="<%=navChild.getId()%>">>><%=navChild.getName()%></option>				      							      			
				      	<%} } }%>
				      </select>
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="article-title" class="col-sm-2 control-label">文章标题</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="article-title" name="title">
				    </div>
				  </div>
				  <div class="form-group">
					  <label class="col-sm-2 control-label">文章正文</label>
					  <div class="col-sm-10">
					    <textarea id="editor" placeholder="这里输入内容" name="content"></textarea>
					    </div>
				  </div>
				  <div class="form-group">
				    <label for="keywords" class="col-sm-2 control-label">文章配图</label>
				    <div class="col-sm-10">
				      <input type="file" name="img_file">
				  </div>
				  </div>
				  <div class="form-group">
				    <label for="keywords" class="col-sm-2 control-label">关键词</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="keywords" name="tags">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">				    
				      <button type="submit" class="btn btn-success  btn-default">提交</button>
				    </div>
				  </div>
				</form>
				  
  <script type="text/javascript">
    var editor = new Simditor({
      textarea: $('#editor')
    });
  </script>
</block>
			</div>			
		</div>
	</div>
<div class="clearfix"></div>
</section>
<%@include file="footer.html" %>
<script src="<%=path%>/public/assets/plugins/jquery/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="<%=path%>/public/assets/plugins/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<script src="<%=path%>/public/assets/global/js/me.js" type="text/javascript"></script>
</body>
<!-- END BODY -->
</html>


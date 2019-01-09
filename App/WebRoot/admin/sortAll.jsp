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
				  <a href="<%=path%>/admin/articleAdd" class="list-group-item">文章发布<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
				  <a href="<%=path%>/admin/fLink" class="list-group-item ">友情链接<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
				  <a href="<%=path%>/admin/categoryManage" class="list-group-item active">分类管理<i class="glyphicon glyphicon-chevron-right pull-right opacity25"></i></a>
			</div>
			</block>
			</div>
			<div class="col-md-9">
			<block name="right">			
				<ol class="breadcrumb">
				  <li>后台管理</li>
				  <li class="active">分类管理</li>
				</ol>
				<div class="row">
					<div class="col-md-3">分类名称</div>
                    <div class="col-md-3">导航级数</div>
					<div class="col-md-2">导航显示</div>
					<div class="col-md-2">操作</div>
				</div>
				<hr>
              	  <div class="list-group">
            		<% navDao navSort = new navDao();
            		   ArrayList<nav> sortList = navSort.queryRootMenu();
            		   for(nav sortPar:sortList){
            			   ArrayList<nav> sortList1 = navSort.queryMenuByPar(sortPar.getId());
            			   if(sortList1.size()==0){
            		%>
	     	<span class="list-group-item" style="border-radius:0;background: #EEEEEE">	
	    	<div class="row">
	     	<div class="col-md-3">
   				<%=sortPar.getName() %>
   			</div>	
    		<div class="col-md-3">一</div>
					<div class="col-md-2">
						<%if(sortPar.getStatus()==0){ %>
						 <i class="glyphicon glyphicon-remove"></i>
						<%}else{%>
						 <i class="glyphicon glyphicon-ok">	</i>
						 <%} %>	
					</div>
					<div class="col-md-2">
						<%if(sortPar.getStatus()==0){ %>
						<a href="doNav?id=<%=sortPar.getId()%>&status=1">开启 </a>|
						<%}else{ %>
						<a href="doNav?id=<%=sortPar.getId()%>&status=0">禁用 </a>|
						<%} %>	
						<a href="delNav?id=<%=sortPar.getId()%>">删除</a> 
					</div>
   			 </div>  
   			 </span>
    <%}else{ %>
   		  	<span class="list-group-item" style="border-radius:0;background: #EEEEEE">	
	    	<div class="row">
	     	<div class="col-md-3">
   				<%=sortPar.getName() %>
   			</div>	
    		<div class="col-md-3">一</div>
					<div class="col-md-2">
						<%if(sortPar.getStatus()==0){ %>
						 <i class="glyphicon glyphicon-remove"></i>
						<%}else{ %>
						 <i class="glyphicon glyphicon-ok">	</i>
						 <%} %>	
					
					</div>
					<div class="col-md-2">
						<%if(sortPar.getStatus()==0){ %>
						<a href="doNav?id=<%=sortPar.getId()%>&status=1">开启 </a>|
						<%}else{ %>
						<a href="doNav?id=<%=sortPar.getId()%>&status=0">禁用 </a>|
						<%} %>	
						<a href="delNav?id=<%=sortPar.getId()%>">删除</a> 
					</div>
   			 </div>  
   			 </span>
    <%for(nav sortChild:sortList1){ %>
  
		   	<span class="list-group-item" style="border-radius:0;">	
	    	<div class="row">
	     	<div class="col-md-3">
           	>>&nbsp;<%=sortChild.getName() %>
            </div>	
    		<div class="col-md-3">二</div>
						<div class="col-md-2">
						<%if(sortChild.getStatus()==0){ %>
						 <i class="glyphicon glyphicon-remove"></i>
						<%}else{ %>
						 <i class="glyphicon glyphicon-ok">	</i>
						 <%} %>	
						</div>
						<div class="col-md-2">
						<%if(sortChild.getStatus()==0){ %>
						<a href="doNav?id=<%=sortChild.getId()%>&status=1">开启 </a>|
						<%}else{ %>
						<a href="doNav?id=<%=sortChild.getId()%>&status=0">禁用 </a>|
						<%} %>	
						<a href="delNav?id=<%=sortChild.getId()%>">删除</a> 
					</div>
			 </div>
   		 </span>
    <%}}} %>
				</div>
			
				 
 				  <form class="form-inline" action="addNav" method="post">
					  <div class="form-group">
					    <label for="exampleInputName2">一级分类</label>
					    <input type="text" class="form-control" id="exampleInputName2" name="Name">
					    <input type="hidden" value="0" name="category_id">
					  </div>
				    <button class="btn btn-success">添加一级分类</button>
				  </form>
				 <br><br><br>
				 <form class="form-inline" action="addNav" method="post">
				  <div class="form-group">
				    <label for="exampleInputEmail2">二级分类</label>
				   <select class="form-control" name="category_id">
				      	<%for(nav sortEj:sortList){ %>
				      		<option value="<%=sortEj.getId()%>"><%=sortEj.getName() %></option>
				      	<%} %>
				      </select>
				    <input type="text" class="form-control" id="exampleInputEmail2" name="Name" placeholder="请先选择一个一级分类" required="required">
				  </div>
               <button class="btn btn-success">添加二级分类</button>
				</form>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
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

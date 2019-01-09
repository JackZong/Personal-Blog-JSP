<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int aid=Integer.parseInt(request.getAttribute("aid").toString());
%>
<%@page import="beans.detail" %>
<%@page import="dao.detailDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>Hello World</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
<meta name="author" content="JackZong"/>
<link href="${pageContext.request.contextPath}/public/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/public/assets/global/css/me.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/public/assets/global/img/favicon.ico"/>
</head>
<body>
<!-- BEGIN PAGE-HEADER -->
<%@include file="nav.html" %>
<!-- END PAGE-HEADER -->
<!-- BEGIN PAGE-BODY -->
<section class="page-body">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<block name="body-left">
					<ol class="breadcrumb">
					  <li>首页</li>
					  <li>读书</li>
					  	<% 
					detailDao article = new detailDao();
					ArrayList<detail> deta = article.queryArticle(aid);
					for(detail det:deta){
					%>
					  <li><a href="#"><%=det.getTitle() %></a></li>
					</ol>
					<div class="body-left" style="background-color: white;height:800px;">
					<div class="article-detail">
				
						<div class="title text-center"><%=det.getTitle() %></div>
						<div class="sub-title">
							<div class="row">
								<div class="col-md-3 col-md-offset-1"><i class="glyphicon glyphicon-time"></i><%=det.getCreate_time() %></div>
								<div class="col-md-3"><i class="glyphicon glyphicon-location"></i>南昌市</div>
								<div class="col-md-2"><i class="glyphicon glyphicon-eye-open"></i><%=det.getHits() %></div>
							</div>
						</div>
						<div class="content">
							<p><%=det.getContent() %></p>
						</div>
						<div class="key-word "><i class="glyphicon glyphicon-tag"></i> 标签：<%=det.getTags() %></div>
					<%} %>
					
					</div>
				  <hr>
	<!-- 				<div class="page">
						<span>上一篇：</span><a href="{:U('Article/detail',array('id'=>$article_detail['last']['id']))}" title="{$article_detail['last']['title']}">{$article_detail['last']['title']}</a><br />
						<hr>
						<span>下一篇：</span><a href="{:U('Article/detail',array('id'=>$article_detail['next']['id']))}" title="{$article_detail['next']['title']}">{$article_detail['next']['title']}</a>
					</div> -->
					<!--打分版，用户可以对当前新闻、游戏或者应用等进行1-5级的评分-->
					
				<div id="SOHUCS"></div>
				<script charset="utf-8" type="text/javascript" src="http://changyan.sohu.com/upload/changyan.js" ></script>
				<script type="text/javascript">
				    window._config = { showScore: true };
				    window.changyan.api.config({
				        appid: 'cyt39NuaL',
				        conf: 'prod_34efe697e3b67b4cd93db03e269eb80f'
				    });
				</script> 

					</div>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
				</block>				
			</div>
		<%@include file="right.html" %>
		</div>
	</div>
</section>
<!-- END PAGE-BODY -->
<!-- BEGIN PAGE-FOOTER -->
<%@include file="footer.html" %>
<!-- END PAGE-FOOTER -->
<!-- BEGIN JAVASCRIPTS -->
<!-- BEGIN CORE PLUGINS -->
<script src="${pageContext.request.contextPath}/public/assets/plugins/jquery/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/public/assets/plugins/bootstrap/js/bootstrap.js" type="text/javascript"></script>

<!-- END CORE PLUGINS -->
<!-- BEGIN CORE SCRIPTS -->
<script src="${pageContext.request.contextPath}/public/assets/global/js/me.js" type="text/javascript"></script> 
<!-- END CORE SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<!-- END PAGE LEVEL SCRIPTS -->
<!-- END JAVASCRIPTS -->

 <script type="text/javascript">
$(document).ready(function() {
	$("li").click(function(){
	
		$(this).addClass("active");
	
		
	});
	
});
</script> 

</body>
<!-- END BODY -->
</html>

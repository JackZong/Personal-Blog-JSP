<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<%@page import="java.util.ArrayList" %>
<%@page import="dao.indexDao" %>
<%@page import="beans.category"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>Hello World</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
<meta name="author" content="JackZong"/>
<link href="<%=path %>/public/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="${pageContext.request.contextPath}/public/assets/global/css/me.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/public/assets/global/img/favicon.ico"/>
</head>
<body>
 
<!-- BEGIN PAGE-HEADER -->
<%@ include file="home/nav.html" %>
<!-- END PAGE-HEADER -->
<!-- BEGIN PAGE-BODY -->

<section class="page-body">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<block name="body-left">
					<div class="headline">
				     <h3>
				     	<span class="section-head-label"></span>
						文章推荐
				    </h3>
					</div>
					<div class="article-list">
					<%
					indexDao article = new indexDao();
					ArrayList<category> alist = article.queryIndexArticle();
					for(category aList:alist){
						%>
								<dl class="article">
						<div class="title_time">
						<div class="row">
						<div class="col-md-11">
						<a href="detail?id=<%=aList.getId() %>" title="<%=aList.getTitle() %>"><%=aList.getTitle() %></a>
						
						</div>
						<div class="col-md-1" style="line-height:0;margin-top:6px;padding-left:0;">
						<span style="font-size: 25px;overflow:hidden;color:green;">95°F</span>
						</div>
						</div>
					</div> 	
					<dd class="article_image">
					<a href="detail?id=<%=aList.getId()%>" title="<%=aList.getTitle() %>">
						<img class="img" src="${pageContext.request.contextPath}/public/assets/global/<%=aList.getImg_file() %>" onerror="this.src='${pageContext.request.contextPath}/public/assets/global/img/error.png'" style="height: 238px;">  
					</a>
					<script type="text/javascript">	
					</script>
					</dd>
					<dd>
						<div class="content">
							<p><%=aList.getContent().length()>40?aList.getContent().substring(0,80)+"...":aList.getContent() %></p> 					
						</div>
					</dd>		
					<dd class="good">
						<div class="row">
							<div class="col-md-3">
								<i class="glyphicon glyphicon-folder-open"></i>&nbsp;&nbsp;<a href="category?id=<%=aList.getCategory_id()%>" style="color:grey;"><%=article.queryCategoryName(aList.getCategory_id())%></a>
							
							</div>
							
							<div class="col-md-9" style="float: right;">
								
								<i class="glyphicon glyphicon-eye-open"></i>&nbsp;&nbsp;<%=aList.getHits() %>&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="artitle_time_date">2017年6月7日 </div>
							</div>
						</div>
					</dd>
					</dl>
						<%
					}
					%>
					</div>
				</block>		
			</div>
<%@include file="home/right.html" %>
		</div>
	</div>
</section>
<!-- END PAGE-BODY -->
<!-- BEGIN PAGE-FOOTER -->
<%@include file="home/footer.html" %>
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

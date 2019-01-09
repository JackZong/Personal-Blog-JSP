<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
int cid=Integer.parseInt(request.getAttribute("cid").toString());
categoryDao cArticle = new categoryDao();
%>
<%@page import="dao.categoryDao" %>
<%@page import="beans.category" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>Hello World</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
<meta name="author" content="JackZong"/>
<link href="<%=path%>/public/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=path%>/public/assets/global/css/me.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="<%=path%>/public/assets/global/img/favicon.ico"/>
</head>
<body>
<!-- BEGIN PAGE-HEADER -->
<%@ include file="nav.html" %>
<!-- END PAGE-HEADER -->
<!-- BEGIN PAGE-BODY -->
<section class="page-body">
	<div class="container">
		<div class="row">
			<div class="col-md-9">
			<block name="body-left">
				<ol class="breadcrumb">
				  <li>首页</li>
				 	 <li> <%=cArticle.queryCategoryName(cid)[0]%></li>
				 	<%if(cArticle.queryCategoryName(cid)[1]!=null){%>
				 	<li><%=cArticle.queryCategoryName(cid)[1]%></li>
				 	<%}
				 	%> 
				</ol>
				<div class="article-list">
					<%
					ArrayList<category> clist = cArticle.queryCategoryArticle(cid);
					if(clist.size()==0){
						out.println("<span class='empty' style='font-size: 1.5em; width:50%; height='50%;'>暂时没有数据<img src='../public/assets/global/img/14.gif' style='width:50px;height:50px;'></span>");
					}else{
					for(category aList:clist){
					%>
						
					<dl class="article">
						<div class="title_time">
						<div class="row">
						<div class="col-md-1" style="line-height:0;margin-top:4px;padding-left:0;">
						<span style="font-size: 60px; overflow:hidden;color:green;">3</span>
						</div>
						<div class="col-md-11">
						<a href="detail?id=<%=aList.getId() %>" title="{$k['title']}"><%=aList.getTitle() %></a>
						<div class="artitle_time_date"><%-- <%=aList.getCreate_time() %> --%>2017年06月7日</div>
						</div>
						</div>
					</div> 	
					<dd class="article_image">
						<a href="{:U('Article/detail',array('id'=>$k['id']))}" title="{$k['title']}">
						<img class="img" src="<%=path%>/public/assets/global/<%=aList.getImg_file() %>" onerror="this.src='${pageContext.request.contextPath}/public/assets/global/img/error.png'" style="height: 238px;">
						</a>
					</dd>
					<dd>
						<div class="content">
							<p><%=aList.getContent().length()>40?aList.getContent().substring(0,80)+"...":aList.getContent()%></p> 					
						</div>
					</dd>		
					<dd class="good">
						<div class="row">
							<div class="col-md-3">
								<i class="glyphicon glyphicon-folder-open"></i>&nbsp;&nbsp;<%=cArticle.queryCategoryName(aList.getCategory_id())[0]%>
							</div>
							<div class="col-md-9" style="float: right;">
								<i class="glyphicon glyphicon-heart" style="color: grey;font-size: 1.2em;"></i><!-- {$k['update_time']} -->120
								<i class="glyphicon glyphicon-eye-open"></i>&nbsp;&nbsp;666
							</div>
						</div>
					</dd>
					</dl>
				 	 <% }%> 
				 	</div>
					<div class="article-page">
						 <nav>
						   <ul class="pagination">
						     <li>
						       <a href="#" aria-label="Previous">
						         <span aria-hidden="true">&laquo;</span>
						       </a>
						     </li>
						     <li><a href="#">1</a></li>
						     <li><a href="#">2</a></li>
						     <li><a href="#">3</a></li>
						     <li><a href="#">4</a></li>
						     <li><a href="#">5</a></li>
						     <li>
						       <a href="#" aria-label="Next">
						         <span aria-hidden="true">&raquo;</span>
						       </a>
						     </li>
						   </ul>
						 </nav>
					<%} %>
					</div>
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
<script src="<%=path%>/public/assets/plugins/jquery/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="<%=path%>/public/assets/plugins/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN CORE SCRIPTS -->
<script src="<%=path%>/public/assets/global/js/me.js" type="text/javascript"></script> 
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

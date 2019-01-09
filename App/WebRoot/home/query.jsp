<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
<%@include file="nav.html" %>
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
						搜索结果<br><br><br><span class="glyphicon glyphicon-search" aria-hidden="true"></span>找到" <span style="color: #dd5862;font-size: 1.2em;">{$keyword}</span>"相关内容 <span style="color: #dd5862;font-size: 1.2em;">{$count}</span> 条
				    </h3>
					</div>
					<div class="article-list">
					 <volist name="query" id="k">
							 	<dl class="article">
							<div class="title_time">
							<div class="row">
							<div class="col-md-1" style="line-height:0;margin-top:4px;padding-left:0;">
							<span style="font-size: 60px; overflow:hidden;color:green;">9</span>
							</div>
							<div class="col-md-11">

							<a href="{:U('Article/detail',array('id'=>$k['id']))}" title="{$k['title']}">这是文章标题</a>
							<div class="artitle_time_date">5&nbsp小时前</div>
							</div>
							</div>
						</div> 	
						<dd class="article_image">
						<a href="{:U('Article/detail',array('id'=>$k['id']))}" title="{$k['title']}">	<img class="img" src="<%=path%>/public/assets/global/img/error.png" alt="图片已烧焦"></a>
						</dd>

						<dd>
							<div class="content">
								<p>{$k['content']|mb_substr=###,0,200,'utf-8'}...</p> 					
							</div>
						</dd>		
						<dd class="good">
							<div class="row">
								<div class="col-md-3">
									<i class="glyphicon glyphicon-folder-open"></i>&nbsp;&nbsp;{$k['category_name']}

								</div>
								<div class="col-md-9" style="float: right;">
									<i class="glyphicon glyphicon-heart" style="color: red;font-size: 1.2em;"></i><!-- {$k['update_time']} -->120
									<i class="glyphicon glyphicon-eye-open"></i>&nbsp;&nbsp;{$k['hits']}
								</div>
							</div>
						</dd>
						</dl>
					 	</volist> 
					 	</div>
						<div class="article-page">
							 {$page}
							<!-- <div> 
								<a class="prev" href="/ClassBlog/index.php?m=Home&c=Index&a=index&p=1">上一页</a> 
								<a class="num" href="/ClassBlog/index.php?m=Home&c=Index&a=index&p=1">1</a>
								<span class="current">2</span>
								<a class="num" href="/ClassBlog/index.php?m=Home&c=Index&a=index&p=3">3</a>
								<a class="next" href="/ClassBlog/index.php?m=Home&c=Index&a=index&p=3">下一页</a>  
								<span class="rows">共 12 条记录</span> 
							</div> -->
						</div>
					
				</block>		

			</div>	
					 <block name="right">
					 </block>
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
$(document).ready(function(){
	$('.jiandao').on('click',function(){
		

	})
	
	
})
</script> 

</body>
<!-- END BODY -->
</html>

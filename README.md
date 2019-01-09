## Personal-Blog-JSP
This is a personal blog made by Java Server Pages
## Structor
![structor](https://github.com/JackZong/Personal-Blog-JSP/blob/master/ReadMe/Picture1.png)
![structor](https://github.com/JackZong/Personal-Blog-JSP/blob/master/ReadMe/Picture2.png)
![structor](https://github.com/JackZong/Personal-Blog-JSP/blob/master/ReadMe/Picture3.png)
## Features
功能列表：
前台：
- [x]    文章显示，包括最热文章、最新文章、根据category分类显示、文章详情显示【最热文章还未完成，按类别显示时分页未实现】
- [x]	Footer文章归档【文章归档暂未实现】
- [x]	友情链接展示
- [x]	关注作者展示
- [x]	文章评论【需联网情况下才能正常使用】
- [x]	文章搜索【暂未动态化】
后台：
- [x]	博主登陆，包括登陆时的验证等	
- [x]	博客文章的CURD
- [x]	友情链接的管理【只完成了select】
- [x]	导航分类的管理，包括CURD	
	
注：打勾部分功能已全部完成，箭头部分功能未全部实现

## How to start the server
1.	创建数据库名为blog【以navicat为例，因为自己使用的是navicat】 账号：root 密码：123【已导出blog.sql，可直接创建一个空的blog数据库，然后运行blog.sql】，数据库编码: utf-8，数据库版本：5.0.22-community-nt

2.	在myEclipse中导入项目名为App的项目，点击run，选择自带的tomcat。【JavaSE-1.6】
3.	打开首页，地址为：localhost:8080/App/home/index【注意一定要是这个网址】
4.	打开后台，登陆地址为：localhost:8080/App/admin/login 账号：123 密码：123【如遇登陆不了，可重新运行项目】
5.	后台首页，地址为：localhost:8080/App/admin/articleAll
6.	后台文章管理：
## Preview
![structor](https://github.com/JackZong/Personal-Blog-JSP/blob/master/ReadMe/Picture4.png)
![structor](https://github.com/JackZong/Personal-Blog-JSP/blob/master/ReadMe/Picture5.png)
![structor](https://github.com/JackZong/Personal-Blog-JSP/blob/master/ReadMe/Picture6.png)
![structor](https://github.com/JackZong/Personal-Blog-JSP/blob/master/ReadMe/Picture7.png)


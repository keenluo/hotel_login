<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.lxy.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>联系我们</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/JFGrid.css" />
<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
		<script type="text/javascript" src="js/JFCore.js"></script>
		<script type="text/javascript" src="js/JFForms.js"></script>
		<!-- Set here the key for your domain in order to hide the watermark on the web server -->
		<script type="text/javascript">
			(function() {
				JC.init({
					domainKey: ''
				});
				})();
		</script>
<!--nav-->
<script>
		$(function() {
			var pull 		= $('#pull');
				menu 		= $('nav ul');
				menuHeight	= menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});

			$(window).resize(function(){
        		var w = $(window).width();
        		if(w > 320 && menu.is(':hidden')) {
        			menu.removeAttr('style');
        		}
    		});
		});
</script>
</head>
<body>
<% // 获取登录的用户信息
	User user = (User)session.getAttribute("user");
	
	%>
<!-- start header -->
<div class="header_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<a href="index.html"><img src="images/logo.png" alt=""></a>
		</div>
		<div class="h_right">
			<!--start menu -->
			<ul class="menu">
				<li class="active"><a href="index.jsp">主页</a></li> |
				
				<li><a href="RoomServlet">房间预定</a></li> |
				<li><a href="message.jsp">个人中心</a></li> |
				<li><a href="contact.jsp">联系我们</a></li> |
				<%  
							if(user != null){
				%>
				
			    <li><a href="WatchorderServlet?id=<%=user.getId()%>">个人订单</a></li>
			    <li><a href="ExitServlet">安全退出</a></li>
				<%
				}
				%>
			</ul>
			<!-- start profile_details -->
					<form class="style-1 drp_dwn">
						<div class="row">
							<div class="grid_3 columns">
								
							</div>		
						</div>		
					</form>
		</div>
			
		<div class="clear"></div>
		<div class="top-nav">
		<nav class="clearfix">
				<ul>
				<li class="active"><a href="index.jsp">酒店主页</a></li> |
				
				<li><a href="RoomServlet">房间预定</a></li> |
				<li><a href="message.jsp">个人中心</a></li> |
				<li><a href="contact.jsp">联系我们</a></li> |
				<%  
							if(user != null){
				%>
				
			    <li><a href="WatchorderServletid=<%=user.getId()%>">个人订单</a></li>
			    <li><a href="ExitServlet">安全退出</a></li>
				<%
				}
				%>
				</ul>
				<a href="#" id="pull">Menu</a>
			</nav>
		</div>
	</div>
</div>
</div>
	
<!--start main -->
<div class="main_bg">
<div class="wrap">
	<div class="main">
		<div class="contact">				
				<div class="contact_left">
					<div class="contact_info">
			    	 	<h3>联系我们</h3>
			    	 		
					   		<a href="MyJsp.jsp">百度位置</a>
					   			
      				</div>
      			
				</div>				
				<div class="contact_right">
				  <div class="contact-form">
				  	<div class="company_address">
				     	<h3>天堂酒店:</h3>
						<p>广东省珠海市</p>
						<p>吉林大学珠海学院</p>
						
				   		<p>电话:123456</p>
				   		<p>邮编:000 00 00 0</p>
				 	 	<p>Email: <a href="mailto:1403928647@qq.com">1403928647@qq.com</a></p>
				   		
				   </div>
				    </div>
  				</div>		
  				<div class="clear"></div>		
		  </div>
	</div>
</div>
</div>		
<!--start main -->
<div class="footer_bg">
<div class="wrap">
<div class="footer">
			<div class="copy">
				<p class="link"><span>Copyright &copy; 2016.Xie Zhicong All rights reserved.</p>
			</div>
			<div class="f_nav">
				<ul>
					<li><a href="index.jsp">主页</a></li>
					
					<li><a href="RoomServlet">房间预订</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
				</ul>
			</div>
			<div class="soc_icons">
				<ul>
					<li><a class="icon1" href="#"></a></li>
					<li><a class="icon2" href="#"></a></li>
					<li><a class="icon3" href="#"></a></li>
					<li><a class="icon4" href="#"></a></li>
					<li><a class="icon5" href="#"></a></li>
					<div class="clear"></div>
				</ul>	
			</div>
			<div class="clear"></div>
</div>
</div>
</div>		

</body>
</html>
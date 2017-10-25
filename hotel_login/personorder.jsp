<%@ page language="java" import="java.sql.*,java.io.*,java.util.*" pageEncoding="UTF-8"%>  

<%@ page import="com.lxy.User" %>
<%@ page import="com.lxy.servlet.*" %>
 <%@ page import="com.lxy.User" %>
<%@ page import="java.text.*"%>
<%@ page import="com.lxy.Order" %>
<%@ page import="com.lxy.servlet.OrderServlet" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>个人订单</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<!---strat-date-piker---->
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-ui.js"></script>
		  <script>
				  $(function() {
				    $( "#datepicker,#datepicker1" ).datepicker();
				  });
		  </script>
<!---/End-date-piker---->
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
		<div class="res_online">
			<h4>个人订单</h4>
			<p class="para">在这里你可以查看自己的个人订单</p>
		</div>			
			<div class="span_of_2">
				<div class="span2_of_1">
				

     <%=user.getUsername() %>的订单<br>
     <br>
     <table>
  <tr>  <td>预定时间</td><td>|</td><td>入住时间</td><td>|</td><td>离店时间</td><td>|</td><td>姓名</td><td>|</td>
  <td>预订房型</td><td>|</td><td>预订数</td><td>|</td><td>总价</td></tr>
 <c:forEach items="${list}" var="order">
 
 <tr>
 <td>${order.datetime}</td><td>|</td>
  <td>${order.checkin}</td><td>|</td>
   <td>${order.checkout}</td><td>|</td>
 <td>${order.username}</td><td>|</td>
 <td>${order.fangxing}</td><td>|</td>
 <td>${order.yds}</td><td>|</td>
 <td>${order.allprice}</td>
 </tr>
 </c:forEach>
    </table> 			
  
	

		</div>
		<div class="clear"></div>
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

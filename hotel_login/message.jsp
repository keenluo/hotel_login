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
<script type="text/javascript">
    	function update(form){
        	if(form.tel.value == ""){
        		alert("用户不能为空！");
        		return false;
        	}
        	if(form.email.value == ""){
        		alert("用户不能为空！");
        		return false;
        	}
        	if(form.password.value == ""){
        		alert("密码不能为空！");
        		return false;
        	}
    	}
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
			<h4>个人中心</h4>
			<p class="para">在这里你可以查看自己的个人个人信息</p>
		</div>			
			<div class="span_of_2">
				<div class="span2_of_1">
				

                      <div class="div3"> 
					    <form action="ChangeuserServlet" method="post" onSubmit="return update(this);">
					    <% 
					    
					    	// 判断用户是否登录
							if(user != null){
						%>
						 
						<table align="center"  border="1" >
							
					    	<tr>
					    		<td align="right">姓名：</td>
					    		<td><%=user.getUsername()%></td>
					    		
					    	</tr>
					    	<tr>
					    		<td align="right">性 别：</td>
					    		<td><%=user.getSex()%></td>
					    	</tr>
					    	<tr>
					    		<td align="right">联系电话：</td>
					    		<td><input type="text" name="tel" value=<%=user.getTel()%>></td>
					    	</tr>
					    	<tr>
					    		<td align="right">电子邮箱：</td>
					    		<td><input type="text" name="email" value=<%=user.getEmail()%>></td>
					    	</tr>
					    	<tr>
					    		<td align="right">密码：</td>
					    		<td><input type="text" name="password" value=<%=user.getPassword()%>></td></tr>
					    		<input type="hidden" name="id" value=<%=user.getId()%>>
					    		<input type="hidden" name="username" value=<%=user.getUsername()%>>
					    		<tr><td><input type="submit"  value="修改"></td></tr>
					    		<tr><td><input type="reset" value="重 置"></td>
					    	</tr>
					    	
						</table>
						</form>
						<%								
							}
							
							else{
								out.println("<br>对不起，您还没有登录！");
							}
						%>
           </div>
 


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
				<p class="link"><span>Copyright &copy; 2014.Company name All rights reserved.</p>
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



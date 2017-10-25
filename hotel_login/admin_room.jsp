<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.lxy.*" %>
<%@ page import="com.lxy.servlet.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员页面</title>
    <link rel="stylesheet" type="text/css" href="images/styles.css">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div align="center">
  	  <img src="images/banner.png">
		  	<div class="div1">
		  		
		  		<div class="bottom">
					<div class="div2">
				  	<ul>
				  			<li><a href="ShowServlet">用户管理</a></li>
				  			<li><a href="ShoworderServlet">订单管理</a></li>
				  			<li><a href="ShowroomServlet">客房管理</a></li>
				  			
				  			<li><a href="ExitServlet">安全退出</a></li>
				  		</ul>	
				  	</div>
				  	
 
 <table align="center">
 <tr><td>客房房型</td><td>剩余房间数</td><td>房间价格</td><td>请输入要修改的房间数</td></tr>
 <c:forEach items="${roomlist}" var="roomlist">
 <tr>
 <td>${roomlist.fangxing}</td>
 <td>${roomlist.num}</td>
 <td>${roomlist.price}</td><br>
 <form action="ChangeroomServlet" method="post">
 <td><input type="text"  onkeyup="this.value=this.value.replace(/[^\d\.]/g, '')" value="10" name="num"></td>
 <td><input type="submit" value="修改"></td>
 <td><input type="hidden" value=${roomlist.fangxing} name="fangxing"></td></tr></form>
 </tr>
 </c:forEach>
 </table>


 
				</div>
		  	</div>
	  </div>
  </body>
</html>

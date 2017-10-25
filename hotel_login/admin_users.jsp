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
    
    <title>管理员页面</title>
    <link rel="stylesheet" type="text/css" href="images/styles.css">
	
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
  <tr><td>用户ID</td><td>用户名</td><td>密码</td><td>性别</td><td>电话</td><td>email</td>
  </tr>
    <c:forEach items="${userlist}" var="userlist"> 
 <tr><td>${userlist.id}</td>
 <td>${userlist.username}</td>
 <td>${userlist.password}</td>
 <td>${userlist.sex}</td>
 <td>${userlist.tel}</td>
 <td>${userlist.email}</td><br>
  <form action="DelServlet" method="post">
 <td><input type="hidden" value=${userlist.id} name="id"></td>
 <td><input type="submit" value="删除"></td></tr></form>
 </c:forEach>
  <tr><td><a href="adduser.jsp">增加用户</a></td></tr>
 </table>

 

<table align="center" >
 <tr><td>
 <form action="ShowServlet">
<c:if test="${pageNos>1 }">
<a href="ShowServlet?pageNos=1" >首页</a>
<a href="ShowServlet?pageNos=${pageNos-1 }">上一页</a>
</c:if>
<c:if test="${pageNos <recordCount }">
<a href="ShowServlet?pageNos=${pageNos+1 }">下一页</a>
<a href="ShowServlet?pageNos=${recordCount }">末页</a>
</c:if>
</td>
</tr>
<tr><h4 align="center">共${recordCount}页  
<input type="text" value="${pageNos}" name="pageNos" size="1">页
<input type="submit" value="到达">
</h4>
</form></tr>
 </table>
 
				</div>
		  	</div>
	  </div>
  </body>
</html>

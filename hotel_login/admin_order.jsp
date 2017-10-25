<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
 <table align="center" >
 <tr><td>订单ID</td><td>预定时间</td><td>入住时间</td><td>离店时间</td><td>姓名</td><td>客户ID</td><td>预订房型</td><td>预订数</td><td>总价</td></tr>
 
 <c:forEach items="${orderlist}" var="orderlist">
 <tr><td>${orderlist.ddid}</td>
  <td>${orderlist.datetime}</td>
  <td>${orderlist.checkin}</td>
  <td>${orderlist.checkout}</td>
 <td>${orderlist.username}</td>
 <td>${orderlist.id}</td>
 <td>${orderlist.fangxing}</td>
 <td>${orderlist.yds}</td>
 <td>${orderlist.allprice}</td>
 <br> <form action="DelServlet" method="post">
 <td><input type="hidden" value=${orderlist.ddid} name="ddid"></td>
 <td><input type="submit" value="删除"></td></tr></form>
 </c:forEach>
</table>
<table align="center" >
 <tr><td>
 <form action="ShoworderServlet">
<c:if test="${pageNos>1 }">
<a href="ShoworderServlet?pageNos=1" >首页</a>
<a href="ShoworderServlet?pageNos=${pageNos-1 }">上一页</a>
</c:if>
<c:if test="${pageNos <recordCount }">
<a href="ShoworderServlet?pageNos=${pageNos+1 }">下一页</a>
<a href="ShoworderServlet?pageNos=${recordCount }">末页</a>
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



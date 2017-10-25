<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="com.lxy.User" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>错误信息</title>
		<link rel="stylesheet" type="text/css" href="images/styles.css">
	</head>

	<body>
		<div align="center">
		<img src="images/banner.png">
		  	<div class="div1">
		  		
		  		<div class="bottom">
					<div class="div2">
				  		
				  	</div>
				  	 <div class="div3"> 
					    <% 
					    	// 获取提示信息
							String info = (String)request.getAttribute("info");
					    	// 如果提示信息不为空，则输出提示信息
							if(info != null){
								out.println(info);
					    	
												
							}
							else{
								out.println("<br>对不起，您还没有登录！");
							}
							%>
						
				  	 </div>
				</div>
		  	</div>
	  </div>
	</body>
</html>

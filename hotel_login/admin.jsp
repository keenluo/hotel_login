<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理员登录</title>
    <link rel="stylesheet" type="text/css" href="images/styles.css">
    <script type="text/javascript">
    	function login(form){
        	if(form.username.value == ""){
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
	  <div align="center">
	       <img src="images/banner.png">
	        
		  	<div class="div1">
		  		<div class="bottom">
					<div class="div2">
				  	<ul>
				  	   
				  		</ul>	
				  	</div>
				  	 <div class="div3"> 
					    <form action="AdminloginServlet" method="post" onSubmit="return login(this);">
						    <table align="center" width="300" border="0" class="tb1">
						    <tr><h4>后台登陆</h4></tr>
						    	<tr>
						    		<td align="right">管理员名：</td>
						    		<td>
						    			<input type="text" name="name">
						    		</td>
						    	</tr>
						    	<tr>
						    		<td align="right">密 码：</td>
						    		<td>
						    			<input type="password" name="password">
						    		</td>
						    	</tr>
						    	<tr>
						    		<td colspan="2" align="center" height="50">
						    			<input type="submit" value="登 录">
						    			<input type="reset" value="重 置">
						    		</td>
						    	</tr>
						    </table>
						</form>
				  	 </div>
				</div>
		  	</div>
	  </div>
  </body>
</html>

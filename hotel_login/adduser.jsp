<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>�û�ע��</title>
    	<link rel="stylesheet" type="text/css" href="images/styles.css">
        <script type="text/javascript">
	    	function adduser(form){
	        	if(form.username.value == ""){
	        		alert("�û�����Ϊ�գ�");
	        		return false;
	        	}
	        	if(form.password.value == ""){
	        		alert("���벻��Ϊ�գ�");
	        		return false;
	        	}
	        	if(form.repassword.value == ""){
	        		alert("ȷ�����벻��Ϊ�գ�");
	        		return false;
	        	}
	        	if(form.password.value != form.repassword.value){
	        		alert("�����������벻һ�£�");
	        		return false;
	        	}
	        	if(form.tel.value == ""){
	        		alert("��ϵ�绰����Ϊ�գ�");
	        		return false;
	        	}
	        	if(form.email.value == ""){
	        		alert("�������䲻��Ϊ�գ�");
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
				  			
				  			<li><a href="ShowServlet">����</a></li>
				  		
				  		</ul>	
				  	</div>
				  	 <div class="div3"> 
					    <form action="AdduserServlet" method="post" onsubmit="return adduser(this);">
						    <table align="center" width="450" border="0">
						    	<tr>
						    		<td align="right">�û�����</td>
						    		<td>
						    			<input type="text" name="username">
						    		</td>
						    	</tr>
						    	<tr>
						    		<td align="right">�� �룺</td>
						    		<td>
						    			<input type="password" name="password">
						    		</td>
						    	</tr>
						    	<tr>
						    		<td align="right">ȷ�����룺</td>
						    		<td>
						    			<input type="password" name="repassword">
						    		</td>
						    	</tr>
						    	<tr>
						    		<td align="right">�� ��</td>
						    		<td>
						    			<input type="radio" name="sex" value="��" checked="checked">��
						    			<input type="radio" name="sex" value="Ů">Ů
						    		</td>
						    	</tr>
						    	
						    	<tr>
						    		<td align="right">��ϵ�绰��</td>
						    		<td>
						    			<input type="text" name="tel">
						    		</td>
						    	</tr>
						    	<tr>
						    		<td align="right">�������䣺</td>
						    		<td>
						    			<input type="text" name="email">
						    		</td>
						    	</tr>
						    	<tr>
						    		<td colspan="2" align="center">
						    			<input type="submit" value="ע ��">
						    			<input type="reset" value="�� ��">
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

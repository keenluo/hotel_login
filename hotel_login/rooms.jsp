<%@ page language="java" import="java.sql.*,java.io.*,java.util.*" pageEncoding="UTF-8"%>  
<%@ page import="com.lxy.Room" %>
<%@ page import="com.lxy.servlet.*" %>
 <%@ page import="com.lxy.User" %>
<%@ page import="java.text.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
<head>
<title>房间预订</title>
  <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/JFGrid.css" />
<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
		<script type="text/javascript" src="js/JFCore.js"></script>
		<script type="text/javascript" src="js/JFForms.js"></script>
		<!---strat-date-piker---->
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-ui.js"></script>
		  <script>
				  $(function() {
				    $( "#datepicker,#datepicker1" ).datepicker();
				  });
		  </script>
		
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
<body><% // 获取登录的用户信息
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
		<div class="content">
			<div class="room">
				<h4>房间预订</h4>
				<p class="para">本酒店是提供酒店式管理服务的公寓。除了提供传统酒店的各项服务外，主要是为住客提供家庭式的居住布局、家居式的服务，简单地说，就是设置于酒店内部，以公寓形式存在的酒店套房。这种套房的显著特点在于，其一，它类似于公寓，有居家的格局和良好的居住功能，有厅、卧室、厨房和卫生间；其二，它配有全套家具与家电，能够为客人提供酒店的专业服务，如室内打扫、床单更换及一些商务服务等等。</p>
			</div>
				<div class="grids_of_2">
					<div class="grids_of_img">
						<img src="images/pic4.jpg" alt=""/>
					</div>
					<div class="grids_of_para">
						<p class="para"><h4>经典房<span>¥199</span></h4></p>
			<p>内设一张单人床或双人床，有卫生间和其他附属设备组成，合住两位客人和夫妻同住，适合旅游团体住用</p></p></div>
					<div class="clear"></div>					
				</div>
				<div class="grids_of_2">
					<div class="grids_of_img">
						<img src="images/pic5.jpg" alt=""/>
					</div>
					<div class="grids_of_para">
						<p class="para"><h4>行政套房<span>¥299</span></h4></p>
			<p>行政套房单独为一楼层，并配有专用的商务中心，咖啡厅。</p></p></div>
					<div class="clear"></div>					
				</div>	
				<div class="grids_of_2">
					<div class="grids_of_img">
						<img src="images/pic6.jpg" alt=""/>
					</div>
					<div class="grids_of_para">
						<p class="para"><h4>总统套房<span>¥688</span></h4>
			<p>周边集住宿餐饮、商务会议、休闲旅游、天然养生服务为一体。拥有风格独异的全别墅式套房高雅奢华。配备24小时管家式体贴入微的服务，让人尊享私家豪宅的贵宾礼遇。</p></p></div>
					<div class="clear"></div>					
				</div>	
				
			
		</div>
		<div class="sidebar">
			<h4>请选择您要预订的时间:</h4>
			<ul class="s_nav">
   <table><tr>
   <td>客房</td>
   <td>剩余</td>
   <td>价格</td>
   <td>预订数</td>
   <td></td>
   </tr>
   <%
     ArrayList<Room> list = (ArrayList<Room>)session.getAttribute("roomlist"); 
     
    
     if(list == null || list.size() < 1)
     out.print("没有数据!"); 
     else{%>
      <form action="OrderServlet" method="post">
     <li  class="span1_of_1 left">
					<h5>入住时间:</h5>
					<div class="book_date">
						
							<input class="date" id="datepicker" type="text" value="DD/MM/YY" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'DD/MM/YY';}" name="checkin" readonly="true">
						

					</div>					
				</li>
				<li  class="span1_of_1 left">
					<h5>离店时间:</h5>
					<div class="book_date">
						
							<input class="date" id="datepicker1" type="text" value="DD/MM/YY" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'DD/MM/YY';}" name="checkout" readonly="true">
						
					</div>		
				</li>
    <% for(Room room : list){ %> 
    
      <tr>
   <td> <%= room.getFangxing()%></td>
     <td> <%= room.getNum() %></td>
     <td> <%= room.getPrice() %></td>
      <input type="hidden" value=<%= room.getNum() %> name="roomnum">
      <input type="hidden" value=<%= user.getId()%> name="id">
      <input type="hidden" value=<%= room.getFangxing()%> name="fangxing">
       <input type="hidden"" value=<%=user.getUsername() %> name="username">
      <input type="hidden" value=<%= room.getPrice()%> name="price">
     <td> <input type="text" onkeyup="this.value=this.value.replace(/[^\d\.]/g, '')" value=1 name="yds"></td>
    <div class="date_btn">
      <td><input type="submit" value="预定" style="width: 40px;"></div> </td> </tr><br>
      </form> 
      <%  
  
           }  
  
        }  
  
       %></table>								

			</ul>
			<h4>we accept</h4>
			<ul class="s_nav1">
				<li><a class="icon1" href="#"></a></li>
				<li><a class="icon2" href="#"></a></li>
				<li><a class="icon3" href="#"></a></li>
				<li><a class="icon4" href="#"></a></li>
			</ul>
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

<%@ page language="java" import="java.sql.*,java.io.*,java.util.*" pageEncoding="UTF-8"%>  
<%@ page import="com.lxy.Room" %>
<%@ page import="com.lxy.servlet.*" %>
 <%@ page import="com.lxy.User" %>
<%@ page import="java.text.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>天堂酒店</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="js/jquery.min.js"></script>
<!--start slider -->
<link rel="stylesheet" href="css/fwslider.css" media="all">
<script src="js/jquery-ui.min.js"></script>
<script src="js/css3-mediaqueries.js"></script>
<script src="js/fwslider.js"></script>
<!--end slider -->
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
function denglu()
{
   alert("请先登陆！");
}
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
	User user = (User)session.getAttribute("user");%>
<!-- start header -->
<div class="header_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<a href="index.jsp"><img src="images/logo.png" alt=""></a>
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
				<div class="clear"></div>
			</ul>
			<!-- start profile_details -->
					<form class="style-1 drp_dwn">
						<div class="row">
							<div class="grid_3 columns">
						<%  
					    	// 判断用户是否登录
							if(user != null){
						%>
						   <font color="blue" ><span style="font-weight: bold;font-size: 18px;"><%=user.getUsername() %></span>
					    			欢迎预定</font>
					    <%                  }
					        else{
					    %>		
					    	
								<select class="custom-select" id="select" onChange="location.replace(this.options[this.selectedIndex].value)">
									<option selected="selected" value="login.jsp">登陆</option>
									<option value="reg.jsp">注册</option>
									
								</select>
								<%} %>
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
				
			    <li><a href="WatchorderServlet?id=<%=user.getId()%>">个人订单</a></li>
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
<!----start-images-slider---->
		<div class="images-slider">
			<!-- start slider -->
		    <div id="fwslider">
		        <div class="slider_container">
		            <div class="slide"> 
		                <!-- Slide image -->
		                    <img src="images/slider-bg.jpg" alt=""/>
		                <!-- /Slide image -->
		                <!-- Texts container -->
		                <div class="slide_content">
		                    <div class="slide_content_wrap">
		                        <!-- Text title -->
		                        <h4 class="title"><i class="bg"></i>欢迎光临 <span class="hide">天堂酒店</span></h4>
		                        <h5 class="title1"><i class="bg"></i>Welcome To <span class="hide" >Paraidse Hotel</span></h5>
		                        <!-- /Text title -->
		                    </div>
		                </div>
		                 <!-- /Texts container -->
		            </div>
		            <!-- /Duplicate to create more slides -->
		            <div class="slide">
		                <img src="images/slider-bg.jpg" alt=""/>
		                <div class="slide_content">
		                     <div class="slide_content_wrap">
		                        <!-- Text title -->
		                        <h4 class="title"><i class="bg"></i>极致享受 </h4>
		                        <h5 class="title1"><i class="bg"></i>纵乐人生</h5>
		                        <!-- /Text title -->
		                    </div>
		                </div>
		            </div>
		            <!--/slide -->
		        </div>
		        <div class="timers"> </div>
		        <div class="slidePrev"><span> </span></div>
		        <div class="slideNext"><span> </span></div>
		    </div>
		    <!--/slider -->
		</div>
<!--start main -->
<div class="copyrights"></div>
<div class="main_bg">
<div class="wrap">
	<div class="online_reservation">
	<div class="b_room">
		<div class="booking_room">
			<h4>快速预定</h4>
			<p>请选择房间种类和入住时间</p>
		</div>
		<div class="reservation">
			<ul>
				<li class="span1_of_1">
					<h5>房型:</h5>
					
					
<!----------start section_room----------->

<% if(user != null){
     ArrayList<Room> list = (ArrayList<Room>)session.getAttribute("roomlist");} 
   %>
         <form action="FastorderServlet" method="post">
         
			<div class="section_room">
			   <select id="room" name="fangxing" onChange="change_country(this.value)" class="frm-field required">
				            <option value="经典房">经典房</option>         
				            <option value="经典房">行政套房</option>
							<option value="经典房">总统套房</option>
		        </select>
	 
			</div>
				</li>
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
				<%if(user==null)
				{%>
				<li class="span1_of_3">
					<div class="date_btn">
						
							<input type="button" onclick="denglu()"  value="立即预定" />
						</form>
					</div>
				</li>
				<%} 
				   else{%>
					<li class="span1_of_3">
					<div class="date_btn"><input type="hidden" value=<%= user.getId()%> name="id">
       <input type="hidden" value=<%= user.getId()%> name="id">
       <input type="hidden"" value=<%=user.getUsername() %> name="username">
       <input type="hidden"  value=1 name="yds"></td>
						
							<input type="submit" value="立即预定" />
						</form>
					</div>
				</li>
				<%} %>
				<div class="clear"></div>
			</ul>
		</div>
		<div class="clear"></div>
		</div>
	</div>
	
	
	
	<!--start grids_of_3 -->
	<div class="grids_of_3">
		<div class="grid1_of_3">
			<div class="grid1_of_3_img">
				<a href="RoomServlet">
					<img src="images/pic2.jpg" alt="" />
					<span class="next"> </span>
				</a>
			</div>
			<h4><a href="RoomServlet">经典房<span>¥199</span></a></h4>
			<p>内设一张单人床或双人床，有卫生间和其他附属设备组成，合住两位客人和夫妻同住，适合旅游团体住用</p>
		</div>
		<div class="grid1_of_3">
			<div class="grid1_of_3_img">
				<a href="RoomServlet">
					<img src="images/pic1.jpg" alt="" />
					<span class="next"> </span>
				</a>
			</div>
			<h4><a href="RoomServlet">行政套房<span>¥299</span></a></h4>
			<p>行政套房单独为一楼层，并配有专用的商务中心，咖啡厅。</p>
		</div>
		<div class="grid1_of_3">
			<div class="grid1_of_3_img">
				<a href="RoomServlet">
					<img src="images/pic3.jpg" alt="" />
					<span class="next"> </span>
				</a>
			</div>
			<h4><a href="RoomServlet">总统套房<span>¥688</span></a></h4>
			<p>周边集住宿餐饮、商务会议、休闲旅游、天然养生服务为一体。拥有风格独异的全别墅式套房高雅奢华。配备24小时管家式体贴入微的服务，让人尊享私家豪宅的贵宾礼遇。</p>
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
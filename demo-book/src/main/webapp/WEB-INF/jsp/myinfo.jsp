<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Myinfo</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='https://fonts.googleapis.com/css?family=Ubuntu+Condensed' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--//fonts-->	
<!-- js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<!-- js -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script>
  $(document).ready(function () {
    var mySelect = $('#first-disabled2');

    $('#special').on('click', function () {
      mySelect.find('option:selected').prop('disabled', true);
      mySelect.selectpicker('refresh');
    });

    $('#special2').on('click', function () {
      mySelect.find('option:disabled').prop('disabled', false);
      mySelect.selectpicker('refresh');
    });

    $('#basic2').selectpicker({
      liveSearch: true,
      maxOptions: 1
    });
  });
  
  $(function(){
	 	 $("#sub25").click(function(){
	 		 var pwd=$("input[name='password']").val();
	 		 var email=$("input[name='email']").val();
	 		 var phone=$("input[name='phone']").val();
	 		 var money=$("input[name='money']").val();
	 		 var photo=$("input[name='photo']").val();
	 		 var reg =/^[\d_a-zA-Z]\w*\.?\w+@[\d_a-zA-Z]{2,}\.[a-zA-Z]{2,4}$/;
	 		 var reg1 =/1[3-9]\d{9}$/;
	 		//邮箱
	 		 if(email == ""){
	 			 alert("邮箱不能为空!");
	 			 $("input[name='email']").val("");
	 		 		return false;
	 		 }else if(!reg.test(email)){
	 			 alert("邮箱格式不正确！");
	 			 $("input[name='email']").val("");
	 			 return false;
	 		 }
	 		//电话
	 		 if(phone == ""){
	 			 alert("手机号不能为空!");
	 			 $("input[name='phone']").val("");
	 		 		return false;
	 		 }else if(!reg1.test(phone)){
	 			 alert("手机号格式不正确!");
	 			 $("input[name='phone']").val("");
	 		 		return false;
	 		 }
	 		//密码   阻止表单提交
	 		if(pwd == ""){
				 alert("密码不能为空!");
				 $("input[name='pwd']").val("");
			 		return false;
			 }
	 	 });
	  }); 
  
  
  
  
</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link href="css/jquery.uls.css" rel="stylesheet"/>
<link href="css/jquery.uls.grid.css" rel="stylesheet"/>
<link href="css/jquery.uls.lcd.css" rel="stylesheet"/>
<!-- Source -->
<script src="js/jquery.uls.data.js"></script>
<script src="js/jquery.uls.data.utils.js"></script>
<script src="js/jquery.uls.lcd.js"></script>
<script src="js/jquery.uls.languagefilter.js"></script>
<script src="js/jquery.uls.regionfilter.js"></script>
<script src="js/jquery.uls.core.js"></script>
<script>
			$( document ).ready( function() {
				$( '.uls-trigger' ).uls( {
					onSelect : function( language ) {
						var languageName = $.uls.data.getAutonym( language );
						$( '.uls-trigger' ).text( languageName );
					},
					quickList: ['en', 'hi', 'he', 'ml', 'ta', 'fr'] //FIXME
				} );
			} );
		</script>
		<link rel="stylesheet" type="text/css" href="css/easy-responsive-tabs.css " />
    <script src="js/easyResponsiveTabs.js"></script>
    	<style type="text/css">
			.dy1 img[src = ""]{
			opacity:0;}
		</style>
</head>

<body>
<div class="header">
		<div class="container">
			<div class="logo">
				<a href="index_a"><span>Book</span>Store</a>
			</div>
			<div class="header-right">
				<a class="account" href="index_a">返回</a>
			</div>
			<div class="header-right">
				  <input style="height:33px;width:60px;border:2px #9999ff dashed;margin-top:20px" type="submit" value="${auser.readerXame }"/>
			</div>
			<div class="header-right" >
				 <a  href="#"> <img style="height:80px;width:80px;border:2px solid #99D3F5;border-radius:50%;" src="${auser.readerPhoto }"></a>
			</div>
		</div>
	</div>
	<div class="banner text-center">
	  <div class="container"></div>
	</div>
	<!-- Feedback -->
	<div class="feedback main-grid-border">
		<div class="container">
			<h2 class="head">个人信息</h2>
			
			<div class="feed-back">
				<div class="feed-back-form">					
					<c:forEach items="${reader }" var="r">	
					
					<span>账号：${r.readerName }</span>
					<form method = "post" action="update4.action"   enctype="multipart/form-data">
					<table>
					 <tr><td>昵称:</td>
					         <input name="name" type="hidden" value="${r.readerName }">
						 <td><input name="xame" type="text" value="${r.readerXame }" style="height:40px;width:600px;margin-top:23px" disabled="disabled"></td>
					 </tr>
					 <tr><td>密码:</td>
						 <td><input name="password" type="text" value="${r.readerPassword }" style="height:40px;width:600px;margin-top:23px"></td>
					 </tr>
					<tr><td>性别:</td>
						 <td><input name="sex" type="text" value="${r.readerSex }" style="height:40px;width:600px;margin-top:23px">（注释：1为男，0为女）</td>
					 </tr>
					 <tr><td>邮箱:</td>
						 <td><input  name="email" type="text" value="${r.readerEmail }" style="height:40px;width:600px;margin-top:23px"></td>
					 </tr>
					 <tr><td>手机:</td>
						 <td><input  name="phone" type="text" value="${r.readerPhone }" style="height:40px;width:600px;margin-top:23px"></td>
					 </tr>
					<tr><td>余额:</td>
						 <td><input name="money"  type="text" value="${r.readerMoney}" style="height:40px;width:600px;margin-top:23px" disabled="disabled"></td>
					 </tr> 
					</table>
							<a><input type="submit" id="sub25" value="点击确认修改"></a>	
							</form>	
							</c:forEach>							
				</div>
			</div>
		</div>	
	</div>
	<!-- // Feedback -->
	<!--footer section start-->		
		<footer>	
			<div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo">
					<a href="index"><span>Book</span>Store</a>
				</div>
				<div class="footer-social-icons">
					<ul>
						<li><a class="facebook" href="#"><span>Facebook</span></a></li>
						<li><a class="twitter" href="#"><span>Twitter</span></a></li>
						<li><a class="flickr" href="#"><span>Flickr</span></a></li>
						<li><a class="googleplus" href="#"><span>Google+</span></a></li>
						<li><a class="dribbble" href="#"><span>Dribbble</span></a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</footer>
        <!--footer section end-->

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
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
 	 $("#sub").click(function(){
 		 var pwd=$("input[name='pwd']").val();
 		 var cpwd=$("input[name='pwds']").val();
 		 var name=$("input[name='name']").val();
 		 var names=$("input[name='names']").val();
 		 var email=$("input[name='email']").val();
 		 var phone=$("input[name='phone']").val();
 		 var money=$("input[name='money']").val();
 		 var photo=$("input[name='photo']").val();
 		 var reg =/^[\d_a-zA-Z]\w*\.?\w+@[\d_a-zA-Z]{2,}\.[a-zA-Z]{2,4}$/;
 		 var reg1 =/1[3-9]\d{9}$/;
 		//账号
 		 if(name == ""){
 			 alert("账号不能为空！");
 			 $("input[name='name']").val("");
 		 		return false;
 		 }
 		//昵称
 		 if(names == ""){
 			 alert("昵称不能为空！");
 			 $("input[name='names']").val("");
 		 		return false;
 		 }
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
		 }else if(cpwd == ""){
			 alert("确认密码不能为空!");
			 $("input[name='pwds']").val("");
		 		return false;
		 }else if(pwd!=cpwd){
 			 alert("两次密码输入不一致");
 			 $("input[name='pwd']").val("");
 			 $("input[name='pwds']").val("");
 		 		return false;
 		 }
 		//余额
		 if(money == ""){
			 alert("余额不能为空!");
			 $("input[name='money']").val("");
		 		return false;
		 }
		//余额
		 if(photo == ""){
			 alert("图像不能为空!");
			 $("input[name='photo']").val("");
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
			#passworde{
				type:password;
			} 
		</style>	
</head>
<body>
<div class="header">
		<div class="container">
			<div class="logo">
				<a href="index.html"><span>Book</span>Store</a>
			</div>
			<div class="header-right">
			<a class="account" href="logins.do">登录</a>
		</div>
		</div>
	</div>
	<div class="banner text-center">
	  <div class="container"></div>
	</div>
	<!-- Terms of use -->
	<div class="contact main-grid-border">
		<div class="container">
			<h2 class="head text-center">注册</h2>
			  <section id="hire">    
				<form id="filldetails" action="newregister.do" method="post" enctype="multipart/form-data">
					<div style="color:red" align="center">${errors}</div> 
					  <div class="field name-box">
							<input type="text" id="name" name="name" placeholder="英文自动转为大写"/>
							<label for="name">账号</label>
							<span class="ss-icon">账号</span>
					  </div>
					  <div class="field name-box">
							<input type="text" id="name" name="names" placeholder="英文自动转为大写"/>
							<label for="name">昵称</label>
							<span class="ss-icon">昵称</span>
					  </div>
					  <div class="field phone-box">
							<input type="text" id="email" name="email" placeholder="英文自动转为大写"/>
							<label for="email">邮箱</label>
							<span class="ss-icon">邮箱</span>
					  </div>
					  <div class="field ad-ID">
							<input type="text" id="phone" name="phone" placeholder="英文自动转为大写"/>
							<label for="email">手机</label>
							<span class="ss-icon">手机</span>
					  </div>
					  <div class="field name-box">
							<input type="password" id="passworde" name="pwd"/>
							<label for="password">密码</label>
							<span class="ss-icon">密码</span>
					  </div>
					  <hr>
					  <div class="field phonenum-box">
							<input type="password" id="password_a" name="pwds"/>
							<label for="password_a">确认密码</label>
							<span class="ss-icon">确认密码</span>
					  </div>
					    <hr>
				      <div class="field name-box">
							<input type="text" id="money" name="money" placeholder="只能填正整数" onkeyup="this.value=this.value.replace(/[^0-9-]+/,'');"/>
							<label for="email">余额</label>
							<span class="ss-icon">余额</span>
					  </div>
					<div class="upload">
					<div id="drop">
						<a>选择头像</a>
						<input type="file" name="file" />
					</div>
					</div>	
					<hr>
					 <div>
						男<input type="radio" name="sex" value="0" checked="checked">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;女<input type="radio" name="sex" value="1"> 
					</div>
			<div>
				<input class="button" type="submit" value="确认注册" id="sub"/>		
			</div>	
		</form>	
		<div class="clear"></div>
		
		<!-- JavaScript Includes -->
		<script src="js/jquery.knob.js"></script>

		<!-- jQuery File Upload Dependencies -->
		<script src="js/jquery.ui.widget.js"></script>
		<script src="js/jquery.fileupload.js"></script>
		
		<!-- Our main JS file -->
		<script src="js/script.js"></script>
			</div>
			</section>
			<script>
				  $('textarea').blur(function () {
				$('#hire textarea').each(function () {
					$this = $(this);
					if (this.value != '') {
						$this.addClass('focused');
						$('textarea + label + span').css({ 'opacity': 1 });
					} else {
						$this.removeClass('focused');
						$('textarea + label + span').css({ 'opacity': 0 });
					}
				});
			});
			$('#hire .field:first-child input').blur(function () {
				$('#hire .field:first-child input').each(function () {
					$this = $(this);
					if (this.value != '') {
						$this.addClass('focused');
						$('.field:first-child input + label + span').css({ 'opacity': 1 });
					} else {
						$this.removeClass('focused');
						$('.field:first-child input + label + span').css({ 'opacity': 0 });
					}
				});
			});
			$('#hire .field:nth-child(2) input').blur(function () {
				$('#hire .field:nth-child(2) input').each(function () {
					$this = $(this);
					if (this.value != '') {
						$this.addClass('focused');
						$('.field:nth-child(2) input + label + span').css({ 'opacity': 1 });
					} else {
						$this.removeClass('focused');
						$('.field:nth-child(2) input + label + span').css({ 'opacity': 0 });
					}
				});
			});
			$('#hire .field:nth-child(3) input').blur(function () {
				$('#hire .field:nth-child(3) input').each(function () {
					$this = $(this);
					if (this.value != '') {
						$this.addClass('focused');
						$('.field:nth-child(3) input + label + span').css({ 'opacity': 1 });
					} else {
						$this.removeClass('focused');
						$('.field:nth-child(3) input + label + span').css({ 'opacity': 0 });
					}
				});
			});
			$('#hire .field:nth-child(4) input').blur(function () {
				$('#hire .field:nth-child(4) input').each(function () {
					$this = $(this);
					if (this.value != '') {
						$this.addClass('focused');
						$('.field:nth-child(4) input + label + span').css({ 'opacity': 1 });
					} else {
						$this.removeClass('focused');
						$('.field:nth-child(4) input + label + span').css({ 'opacity': 0 });
					}
				});
			});
		  //@ sourceURL=pen.js
		</script>    
		<script>
	  if (document.location.search.match(/type=embed/gi)) {
		window.parent.postMessage("resize", "*");
	  }
	</script>
	</div>	
	<!-- // Terms of use -->
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
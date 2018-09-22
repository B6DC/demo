<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
    <%@ page import="java.net.URLDecoder" %>
    <%
	
	 Cookie[] cookies = request.getCookies();
     String username = "";
     String cname ="";
     if(cookies != null){
     for(Cookie c:cookies){
    	 if(c.getName().equals("name")){
    		 username=c.getValue();	 
    		 cname = URLDecoder.decode(username,"utf-8");
    	 }   
     	}
     }
     String userpwd ="";
     String cpwd ="";
     if(cookies != null){
         for(Cookie c:cookies){
        	 if(c.getName().equals("pwd")){
        		 userpwd=c.getValue();	
        		 cpwd = URLDecoder.decode(userpwd,"utf-8");
        	 }
         	}
         }
%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
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
 		 var name=$("input[name='name']").val();
 		//账号
 		 if(name == ""){
 			 alert("账号不能为空！");
 			 $("input[name='name']").val("");
 		 		return false;
 		 }
 		//密码   阻止表单提交
 		 if(pwd == ""){
 			 alert("密码不能为空！");
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
</head>
<body>
<div class="header">
		<div class="container">
			<div class="logo">
				<a href="index"><span>Book</span>Store</a>
			</div>
		</div>
	</div>
	 <section>
			<div id="page-wrapper" class="sign-in-wrapper">
				<div class="graphs">
					<div class="sign-in-form">
						<div class="signin">
							<form action="login.do" method="post">
								<div style="color:red" align="center">${error}</div> 
							<div class="log-input">
								<div class="log-input-left">
								  &nbsp; &nbsp; &nbsp; &nbsp;<input type="text" class="user" name="name" value="<%=cname%>" />
								 </div>
								<div class="clearfix"> </div>
							</div>
							<div class="log-input">
								<div class="log-input-left">
								  &nbsp; &nbsp; &nbsp; &nbsp;<input type="password" class="lock" name="pwd" value="<%=cpwd%>"/>
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="signin-rit">
								<span class="checkbox1">
									<label class="checkbox"><input type="checkbox" name="checkbox">记住密码 </label>
								</span>
								<p><a href="forgetx.do">忘了密码?</a></p>
								<div class="clearfix"> </div>
							</div>
							<input type="submit" value="登录" id="sub"/>
						</form>	 
						</div>
						<div class="new_people">
							<a href="register.do">立即注册!</a>
						</div>
					</div>
				</div>
			</div>
		<!--footer section start-->
			<footer class="diff">
				<div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo">
					<a href="index.html"><span>Book</span>Store</a>
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
			</div>
		</div>
			
			</footer>
        <!--footer section end-->
	</section>
</body>
</html>


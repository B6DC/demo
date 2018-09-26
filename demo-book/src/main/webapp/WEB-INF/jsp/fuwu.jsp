<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>FuWu</title>
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
 #dy2 img[src=""],img:not([src]){
      opacity:0;
 }
</style>


<script>
		 $(function(){
		 $("#sub1").click(function(){
			  var name=$("input[name='hame']").val(); 
			 if(name == ""){
				 alert("请先登录书城");
				 window.location.href='logins.do';
				 var name=$("input[name='hame']").val(); 
				 return false;
			 }else{
				 alert("添加完成");
			 }
		 });
		});
		 
		 $(function(){
			 $("#sub2").click(function(){
				  var name=$("input[name='hame']").val(); 
				 if(name == ""){
					 alert("请先登录书城");
					 window.location.href='logins.do';
					 var name=$("input[name='hame']").val(); 
					 return false;
				 }
			 });
			});
		 
		 
		 $(function(){
			 $("#sub3").click(function(){
				  var same=$("input[name='same']").val(); 
				 if(same == ""){
					 window.location.href='index';
					 var same=$("input[name='same']").val(); 
					 return false;
				 }else{
					 window.location.href='index_a';
				 }
			 });
		});
		 
		 $(function(){
			 $("#sub5").click(function(){
				  var same=$("input[name='same']").val(); 
				 if(same == ""){
					 window.location.href='index';
					 var same=$("input[name='same']").val(); 
					 return false;
				 }else{
					 window.location.href='index_a';
				 }
			 });
		});
		 
</script>


</head>
<body>

<div class="header">


		<div class="container">
			<div class="logo" id="sub3">
				<form  method="post">
					<a><span>Book<input style="border: 0px;outline:none;cursor: pointer;color:rgb(253,253,253);height:1px;width:1px;"  value="${auser.readerXame }" name="same"/> Store</span></a>
				</form>
			</div>	
			<div class="header-right">
					<form action="fuwu.action" method="post">
						<c:forEach items="${book }" var="u">	
							<input value="${u.bookId }" name="bid" type="hidden"/>	
						</c:forEach>
						&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" style="height:30px;width:60px;margin-top:10px;border:2px #9999ff dashed;">购物车</button>
					</form>
			</div>
			<div class="header-right" >
				 <input  name="hame" value="${auser.readerXame }" type="hidden"/> 
			</div>

			<%-- <div class="header-right" id="dy2" style="height:60px;width:60px;border-radius:50%;">
				 <img src="${auser.readerPhoto }">
			</div> --%>
		</div>
	</div>
			<div class="select-box">
				<div class="clearfix"></div>
			</div>				
	<div class="total-ads main-grid-border">
		<div class="container">
			<ol class="breadcrumb" style="margin-bottom: 5px;">
			  <li><a href="index">主页</a></li>
			  <li><a href="fuwu.action">服务</a></li>
			</ol>
			<div class="ads-grid">
				<div class="ads-display col-md-9">
					<div class="wrapper">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					  <ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
						<li role="presentation" class="active">
						  <a href="fuwu.action" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
							<span class="text">服务</span>
						  </a>
						</li>
					  </ul>
					  <div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						   <div>
							<div id="container">
								<div class="clearfix"></div>
							<c:forEach items="${book }" var="u">		
							<ul class="list">
									<li>
									<a href="single.html">
									<img src="${u.bookPhoto }" title="" />
									<section class="list-left">
									<h5 class="title" style="color:orange;">${u.bookName }</h5>
									<span class="adprice">￥${u.bookPrice }</span>
									<p class="catpath">${u.bookAuthor }</p>
									</section>
									</a>
									
								<div class="header-right">
									<form action="goumai.action" method="post">
										<input class="button"  id="sub2" type="submit" value="立即购买">
									</form>
								</div>
								<div class="header-right">
									<form action="fuwu3.action" method="post">
										<c:forEach items="${book }" var="u">	
											<input value="${u.bookId }" name="bbid" type="hidden"/>
											<input value="${u.bookPhoto }" name="bbpo" type="hidden"/>
											<input value="${u.bookName }" name="bbne" type="hidden"/>
											<input value="${u.bookPrice }" name="bbpe" type="hidden"/>
											<input value="${u.bookAuthor }" name="bbar" type="hidden"/>
											<input value="${auser.readerXame }" name="brxe" type="hidden"/>
											<input value="${auser.readerPhoto }" name="brpo" type="hidden"/>
										</c:forEach>
										<input class="button" id="sub1" type="submit" value="加入购物车" />
									</form>
								</div>
									<div class="clearfix"></div>
									</li> 	
							</ul>	
							</c:forEach>	
							</div>
							</div>
						</div>
					  </div>
					</div>
				</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>	
	</div>
						
	<script type="text/javascript">
    $(document).ready(function() {

        //Vertical Tab
        $('#parentVerticalTab').easyResponsiveTabs({
            type: 'vertical', //Types: default, vertical, accordion
            width: 'auto', //auto or any width like 600px
            fit: true, // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            tabidentify: 'hor_1', // The tab groups identifier
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#nested-tabInfo2');
                var $name = $('span', $info);
                $name.text($tab.text());
                $info.show();
            }
        });
    });
    
</script>
	<!-- //Categories -->
	<!--footer section start-->		
		<footer>
			<div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo">
					<form  method="post">
						<a id="sub5"><span>Book</span>Store</a>
					</form>
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
       
       
     
</body>
</html>
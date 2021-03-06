<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Cart</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
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
    <script src="js/tabs.js"></script>
	
<script type="text/javascript">
$(document).ready(function () {    
var elem=$('#container ul');      
	$('#viewcontrols a').on('click',function(e) {
		if ($(this).hasClass('gridview')) {
			elem.fadeOut(1000, function () {
				$('#container ul').removeClass('list').addClass('grid');
				$('#viewcontrols').removeClass('view-controls-list').addClass('view-controls-grid');
				$('#viewcontrols .gridview').addClass('active');
				$('#viewcontrols .listview').removeClass('active');
				elem.fadeIn(1000);
			});						
		}
		else if($(this).hasClass('listview')) {
			elem.fadeOut(1000, function () {
				$('#container ul').removeClass('grid').addClass('list');
				$('#viewcontrols').removeClass('view-controls-grid').addClass('view-controls-list');
				$('#viewcontrols .gridview').removeClass('active');
				$('#viewcontrols .listview').addClass('active');
				elem.fadeIn(1000);
			});									
		}
	});
});



$(function(){
	 $("#sub4").click(function(){
		  var add=$("input[name='bbar']").val(); 
		 if(add == ""){
			 alert("请先添加收货地址");
			 var add=$("input[name='bbar']").val(); 
			 return false;
		 }else{
			 
			 alert("付款成功");
				
			 
		 }
	 });
});


$(function(){
	 $("#sub20").click(function(){
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
			<div class="logo">
				<form  method="post" id="sub20">
					<a><span>Book<input style="border: 0px;outline:none;cursor: pointer;color:rgb(253,253,253);height:1px;width:1px;"  value="${auser.readerXame }" name="same"/> Store</span></a>
				</form>
			</div>
			
			<div class="header-right">
					<form action="fukuan.action" method="post">
						<c:forEach items="${book }" var="u">	
							<input value="${u.aid }" name="bqd" type="hidden"/>
							<input value="${u.bookId }" name="qbd" type="hidden"/>		
						</c:forEach>
							<button  type="submit" style="height:30px;width:90px;margin-top:10px;border:2px #9999ff dashed;">购买记录</button>
					</form>
			</div>
			
			<div class="header-right" >
				 <input  name="hame" value="${auser.readerXame }" type="hidden"/> 
			</div>
		</div>
	</div>
	
	<!-- Electronic appliances -->
	<div class="total-ads main-grid-border">
		<div class="container">
			<div class="select-box">				
				<div class="clearfix"></div>
			</div>
			<ol class="breadcrumb" style="margin-bottom: 5px;">
			   <li><a href="index_a">主页</a></li>
			   <li><a href="gouwuche.action">购物车</a></li>
			</ol>
			<div class="ads-grid">
				<div class="ads-display col-md-9">
					<div class="wrapper">					
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
					  <ul id="myTab" class="nav nav-tabs nav-tabs-responsive" role="tablist">
						<li role="presentation" class="active">
						  <a href="gouwuche.action" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">
							<span class="text">购物车</span>
						  </a>
						</li>
					  </ul>
					  <div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
						   <div>
												<div id="container">
								<div class="view-controls-list" id="viewcontrols">
									<label>View :</label>
									<a class="gridview"><i class="glyphicon glyphicon-th"></i></a>
									<a class="listview active"><i class="glyphicon glyphicon-th-list"></i></a>
								</div>
								<div class="clearfix"></div>
							<c:forEach items="${book }" var="u">	
							<ul class="list">
									<li>
									
									<img src="${u.bookPhoto }" title="" alt="" />
									<section class="list-left">
									<h5 class="title">${u.bookName}</h5>
									<span class="adprice">￥${u.bookPrice}</span>
									<p class="catpath">${u.bookAuthor }</p>
									</section>
									
									<div class="header-right">
										<a class="account" href="#">${u.cartType }</a>
									</div>
									<div class="clearfix"></div>
									</li> 
							</ul>
							</c:forEach>
							<div class="header-right" >
								<form action="dizhi.action" method="post">
										<c:forEach items="${book }" var="u">	
											<input value="${u.bookId }" name="bbid" type="hidden"/>
											<input value="${u.bookPhoto }" name="bbpo" type="hidden"/>
											<input value="${u.bookName }" name="bbne" type="hidden"/>
											<input value="${u.bookPrice }" name="bbpe" type="hidden"/>
											<input value="${auser.readerXame }" name="brxe" type="hidden"/>
										</c:forEach>
										<input  placeholder="请添加收货地址" style="height:30px;width:350px;text-align:left;vertical-align:middel;" name="bbar"/>
										<!-- <a class="account" id="sub4" type="submit" href="javascript:;">点击付款</a> -->
										<input class="button" id="sub4" type="submit" value="点击付款" /> 
										<c:forEach items="${book }" var="u">
											<input value="总金额：￥：${u.bookPrice }" disabled="disabled" style="color:red;margin-top:20px;height:33px;width:160px;"/>		
										</c:forEach>
								</form>
									
							</div>
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
	<!-- // Electronic appliances -->
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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
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
</head>
<body>
	<div class="header">
		<div class="container">
			<div class="logo">
				<a href="index"><span>Book Store</span></a>
			</div>
			<div class="header-right">
				<a class="account" href="tbl_login.action">管理员登陆</a>
			</div>
			<div class="header-right">
				&nbsp;&nbsp;&nbsp;&nbsp;<a class="account" href="logins.do">用户登陆</a>
			</div>
			
		</div>
	</div>
	<div class="main-banner banner text-center">
	  <div class="container">    
			
	  </div>
	</div>
	
		<!-- content-starts-here -->
		
			<div class="categories">
				<div class="container">
					<div class="col-md-2 focus-grid" >
						<a href="shouji.action">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-mobile"></i></div>
										<h4 class="clrchg">手机</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="dianqi.action#parentVerticalTab2">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-laptop"></i></div>
									<h4 class="clrchg">电器</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="qiche.action#parentVerticalTab3">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-car"></i></div>
									<h4 class="clrchg">汽车</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-2 focus-grid">
						<a href="zixingche.action#parentVerticalTab4">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-motorcycle"></i></div>
									<h4 class="clrchg">自行车</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-2 focus-grid">
						<a href="jiaju.action#parentVerticalTab5">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-wheelchair"></i></div>
									<h4 class="clrchg">家具</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="chongwu.action#parentVerticalTab6">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-paw"></i></div>
									<h4 class="clrchg">宠物</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-2 focus-grid">
						<a href="wenxue.action#parentVerticalTab7">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-book"></i></div>
									<h4 class="clrchg">文学</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-2 focus-grid">
						<a href="shishang.action#parentVerticalTab8">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-asterisk"></i></div>
									<h4 class="clrchg">时尚</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-2 focus-grid">
						<a href="youxi.action#parentVerticalTab9">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-gamepad"></i></div>
									<h4 class="clrchg">游戏</h4>
								</div>
							</div>
						</a>
					</div>	
					<div class="col-md-2 focus-grid">
						<a href="fuwu1.action#parentVerticalTab10">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-shield"></i></div>
									<h4 class="clrchg">服务</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="zhichang.action#parentVerticalTab11">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-at"></i></div>
									<h4 class="clrchg">职场</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="col-md-2 focus-grid">
						<a href="fangdichan.action#parentVerticalTab12">
							<div class="focus-border">
								<div class="focus-layout">
									<div class="focus-image"><i class="fa fa-home"></i></div>
									<h4 class="clrchg">房地产</h4>
								</div>
							</div>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="trending-ads">
				<div class="container">
				<!-- slider -->
				
				<div class="trend-ads">
					<h2>特价书籍</h2>
							<ul id="flexiselDemo3">
								<li>
								<c:forEach items="${book }" var="u">
									<div class="col-md-3 biseller-column">
										<a href="shouji.action">
											<img src="${u.bookPhoto }"/>
											<span class="price">￥${u.bookPrice }</span>
										</a> 
										<div class="ad-info">
											<h5>${u.bookName }</h5>
											<span>${u.bookAuthor }</span>
										</div>
									</div>
									</c:forEach> 
								</li>
								
								<li>
								<c:forEach items="${book1 }" var="u">
									<div class="col-md-3 biseller-column">
										<a href="wenxue.action">
											<img src="${u.bookPhoto }"/>
											<span class="price">￥${u.bookPrice }</span>
										</a> 
										<div class="ad-info">
											<h5>${u.bookName }</h5>
											<span>${u.bookAuthor }</span>
										</div>
									</div>
									</c:forEach> 
								</li>
								
								
							</ul>
						
					<script type="text/javascript">
						 $(window).load(function() {
							$("#flexiselDemo3").flexisel({
								visibleItems:1,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 5000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems:1
									}, 
									landscape: { 
										changePoint:640,
										visibleItems:1
									},
									tablet: { 
										changePoint:768,
										visibleItems:1
									}
								}
							});
							
						});
					   </script>
					   <script type="text/javascript" src="js/jquery.flexisel.js"></script>
					</div> 
					 
			</div>
			<!-- //slider -->				
			</div>
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
			</div>
		</div>
		</footer>
</body>
</html>
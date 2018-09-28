<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Categories</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-select.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Resale Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link href='https://fonts.googleapis.com/css?family=Ubuntu+Condensed'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
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
<link href="css/jquery.uls.css" rel="stylesheet" />
<link href="css/jquery.uls.grid.css" rel="stylesheet" />
<link href="css/jquery.uls.lcd.css" rel="stylesheet" />
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
<link rel="stylesheet" type="text/css"
	href="css/easy-responsive-tabs.css " />
<script src="js/easyResponsiveTabs.js"></script>

<style type="text/css">
 
#dy2 img[src=""],
	img:not([src]){ 
	opacity:0; 
}
</style>


<script>
		 $(function(){
			 $("#sub").click(function(){
				  var name=$("a[id='xxame']").val(); 
				 if(name == ""){
					
					 window.location.href='logins.do';
					 return false;
				 }
			 });
		  });		 
		
		$(function(){
			$("#tijiao").click(function(){
				var pl=$("#text1").val();
				 var name=$("input[name='hame']").val(); 
				 if(name == ""){
					 alert("请先登录书城");
					 window.location.href='logins.do';
					 var name=$("input[name='hame']").val(); 
				 }else
				if(pl!=""){
				$.ajax({
					url:'/demo-book/addContent.do',
					type:'post',
					data:{"pl":pl},
					dataType : 'json',
					success : function(data) {
					var select = $("#pinglun");
					select.empty();
					for(var i=0;i<data.length;i++){
						select.append("<tr><td>"+data[i].readerXame+"</td><td>"+data[i].bookContent+"</td><td>"+data[i].publishtime+"</td></tr>");
					}
					alert("评论成功");
					$("#text1").val("");
					}
				});
				}else{
					alert("请输入评论内容");
				}
			}); 
		})
		
		$(function(){
			 $("#sub40").click(function(){
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
			<div class="logo" id="sub40">
				<form  method="post">
					<a><span>Book<input style="border: 0px;outline:none;cursor: pointer;color:rgb(253,253,253);height:1px;width:1px;"/> Store</span></a>
				</form>
			</div>	
			<div class="header-right">
				 <input  name="hame" value="${auser.readerXame }" type="hidden"/> 
			</div>
			<div class="header-right" id="dy2"
				style="height: 60px; width: 60px; border-radius: 50%;">
				 <img src="${auser.readerPhoto }">
			</div>
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
				<li><a>详情</a></li>
			</ol>
			<div class="ads-grid">
				<div class="ads-display col-md-9">
					<div class="wrapper">
						<div class="bs-example bs-example-tabs" role="tabpanel"
							data-example-id="togglable-tabs">
							<ul id="myTab" class="nav nav-tabs nav-tabs-responsive"
								role="tablist">
								<li role="presentation" class="active"><a
									href="fuwu.action" id="home-tab" role="tab" data-toggle="tab"
									aria-controls="home" aria-expanded="true"> <span
										class="text">详细介绍</span>
								</a></li>
							</ul>
							<div id="myTabContent" class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="home"
									aria-labelledby="home-tab">
									<div>
										<div id="container">
											<div class="clearfix"></div>
											<ul class="list">
												<li><img src="${book.bookPhoto }" title="" />
													<section class="list-left">
														<h5 class="title" style="color: orange;">${book.bookName}</h5>
														<span class="adprice">价格:￥${book.bookPrice }</span>
														<p class="catpath">作者:${book.bookAuthor }</p>
														<p class="catpath">出版日期:${book.bookTime }</p>
													</section>
													<div class="clearfix"></div></li>
												<li>
											
													<table>
														<tr>
															<td><span>添加评论</span></td>
														</tr>
														<tr>
															<td><textarea id="text1" name="text1" rows="5" cols="77" placeholder="请输入您要评价的词"></textarea></td>
														</tr>
														<tr>
															<td>
																<button id="tijiao" type="submit">提交</button>
														<tr>
															<td>
													</table>
												</li>

												<li>
													<table>
														<thead align="center" style="text-align: center">
															<tr>
																<th>历史评论记录</th>
															</tr>
															<tr>
																<td>呢称</td>
																<td>内容</td>
																<td>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																评论时间
																</td>
															</tr>
														</thead>
														<tbody id="pinglun" class="tbody"
															style="text-align: center">
															<c:forEach items="${conment}" var="u">
																<tr>
																	<td>${u.readerXame}</td>
																	<td>${u.bookContent}</td>
																	<td  align=right>
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	${u.publishtime}
																	</td>
															</c:forEach>
														</tbody>
													</table>
												</li>
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

	<!-- <script type="text/javascript">
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
    })
</script> -->
	<!-- //Categories -->
	<!--footer section start-->
	<footer>
		<div class="footer-bottom text-center">
			<div class="container">
				<div class="footer-logo">
					<a href="index_a"><span>Book</span>Store</a>
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
</body>
</html>
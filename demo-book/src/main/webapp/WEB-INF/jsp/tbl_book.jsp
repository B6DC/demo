<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>书籍管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 书籍管理 <span class="c-gray en">&gt;</span> 书籍列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<form method="post">
<div class="page-container">
	<div class="text-c"> 
		<a href="tbl_book_add.action"><i class="Hui-iconfont">&#xe665;添加图书</i></a>
	</div>
	<div class="mt-20">
		<input type="hidden" name="bid">
		<input type="hidden" name="bookid">
		<input type="hidden" name="bookname">
		<input type="hidden" name="booktype">
		<input type="hidden" name="bookauthor">
		<input type="hidden" name="bookpubname">
		<input type="hidden" name="booktime">
		<input type="hidden" name="bookprice">
		<input type="hidden" name="bookamount">
		<input type="hidden" name="bookphoto">
	
		<table class="table table-border table-bordered table-bg table-hover table-sort table-responsive">
			<thead>
				<tr class="text-c">
					
					<th width="80">编号</th>
					<th width="80">书号</th>
					<th width="80">书名</th>
					<th width="80">类别</th>
					<th width="80">作者</th>
					<th width="100">出版社</th>
					<th width="120">出版时间</th>
					<th width="75">价格</th>
					<th width="60">库存</th>
					<th width="160">书籍封面</th>
					<th width="60">操作</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list }" var="u">
				<tr class="text-c">
					<td>${u.bid}</td>
					<td>${u.bookId}</td>
					<td>${u.bookName}</td>
					<td>${u.bookType}</td>
					<td>${u.bookAuthor}</td>
					<td>${u.bookPubname}</td>
					<td><fmt:formatDate value="${u.bookTime}" pattern="yyyy-MM-dd"/></td>
					<td>${u.bookPrice}</td>
					<td>${u.bookAmount}</td>                                                                                                                                                                                                       
					<td>${u.bookPhoto}</td>
					<td><a style="text-decoration:none" class="ml-5" href="javascript:void(0)" onClick="undate('${u.bid}','${u.bookId}','${u.bookName}','${u.bookType}','${u.bookAuthor}','${u.bookPubname}',
	        	      '<fmt:formatDate value="${u.bookTime}" pattern="yyyy-MM-dd"/>','${u.bookPrice}',
	        	      '${u.bookAmount}','${u.bookPhoto}');"><i class="Hui-iconfont">&#xe6df;</i></a></td>
				
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</form>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/My97DatePicker/4.8/WdatePicker.js"></script> 
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">

$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"pading":false,
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,8]}// 不参与排序的列
	]
});

/*资讯-编辑*/

function undate(bid,bookId,bookName,bookType,bookAuthor,bookPubname,bookTime,bookPrice,bookAmount,bookPhoto){
	
	document.forms[0].elements[0].value = bid;
	document.forms[0].elements[1].value = bookId;
	document.forms[0].elements[2].value = bookName;
	document.forms[0].elements[3].value = bookType;
	document.forms[0].elements[4].value = bookAuthor;
	document.forms[0].elements[5].value = bookPubname;
	document.forms[0].elements[6].value = bookTime;
	document.forms[0].elements[7].value = bookPrice;
	document.forms[0].elements[8].value = bookAmount;
	document.forms[0].elements[9].value = bookPhoto;
	
	document.forms[0].action = '<c:url value="update.action"/>';
	
	document.forms[0].submit();
	
}
</script> 
</body>
</html>
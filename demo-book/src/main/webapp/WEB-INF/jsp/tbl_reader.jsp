<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>用户管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 用户中心 <span class="c-gray en">&gt;</span> 用户管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<form method="post">
<div class="page-container">
	<div class="text-c"> 
		<input type="text" class="input-text" style="width:250px" placeholder="输入用户昵称" id="" name="">
		<button type="submit" class="btn btn-success radius" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
	</div>
	<div class="mt-20">
	 <input type="hidden" name="readerId">
		<input type="hidden" name="readerName">
		<input type="hidden" name="readerPassword">
		<input type="hidden" name="readerXame" >
		<input type="hidden" name="readerSex">
		<input type="hidden" name="readerPhoto">
		<input type="hidden" name="readerPhone">
		<input type="hidden" name="readerEmail">
		<input type="hidden" name="readerMoney">
	<table class="table table-border table-bordered table-hover table-bg table-sort">
		<thead>
			<tr class="text-c">
				<th width="80">用户编号</th>
				<th width="100">用户账号</th>
				<th width="100">用户密码</th>
				<th width="90">用户昵称</th>
				<th width="40">性别</th>
				<th width="">头像</th>
				<th width="150">手机</th>
				<th width="200">邮箱</th>
				<th width="70">余额</th>
				<th width="100">操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="u">
			<tr class="text-c">
				<td>${u.readerId}</td>
				<td>${u.readerName}</td>
				<td>${u.readerPassword}</td>
				<td>${u.readerXame}</td>
				<td>${u.readerSex}</td>
				<td><img style="width:30px;height:30px;" src="${u.readerPhoto}"></td>
				<td>${u.readerPhone}</td>
				<td>${u.readerEmail}</td>
				<td>${u.readerMoney}</td>
				<td class="td-manage"><a title="编辑" href="javascript:void(0)"  class="ml-5" style="text-decoration:none" onClick="undate('44','55','${u.readerId}','${u.readerName}','${u.readerPassword}','${u.readerXame}','${u.readerSex}','${u.readerPhoto}','${u.readerPhone}','${u.readerEmail}','${u.readerMoney}');"><i class="Hui-iconfont">&#xe6df;</i></a>				
				<a title="删除" href="javascript:;" onclick="member_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
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
$(function(){
	$('.table-sort').dataTable({
		"aaSorting": [[ 1, "desc" ]],//默认第几个排序
		"bStateSave": true,//状态保存
		"aoColumnDefs": [
		  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
		  {"orderable":false,"aTargets":[0,8,9]}// 制定列不参与排序
		]
	});
	
});
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*密码-修改*/
function change_password(title,url,id,w,h){
	layer_show(title,url,w,h);	
}
/*用户-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$.ajax({
			type: 'POST',
			url: '',
			dataType: 'json',
			success: function(data){
				$(obj).parents("tr").remove();
				layer.msg('已删除!',{icon:1,time:1000});
			},
			error:function(data) {
				console.log(data.msg);
			},
		});		
	});
}


function undate(readeroid,readerdid,readerid,readername,readerpassword,readerxame,readersex,readerphoto,readerphone,readeremail,readermoney){
	document.forms[0].elements[0].value = readeroid;
	document.forms[0].elements[1].value = readerdid;
	document.forms[0].elements[2].value = readerid;
	document.forms[0].elements[3].value = readername;
	document.forms[0].elements[4].value = readerpassword;
	document.forms[0].elements[5].value = readerxame;
	document.forms[0].elements[6].value = readersex;
	document.forms[0].elements[7].value = readerphoto;
	document.forms[0].elements[8].value = readerphone;
	document.forms[0].elements[9].value = readeremail;
	document.forms[0].elements[10].value = readermoney;
	

	
	document.forms[0].action = '<c:url value="tbl-reader-add.action"/>';
	
	document.forms[0].submit();
	
}

</script> 
</body>
</html>
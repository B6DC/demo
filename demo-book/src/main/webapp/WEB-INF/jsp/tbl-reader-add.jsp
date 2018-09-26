<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
  <head>   
    <title>b</title>
  </head>
  <body  >
  <form  method = "post"   enctype="multipart/form-data" action="update3.action">
 
  <table align="center">
  <tr>
		<td>编号:</td>	
		<td><input type = "text" name="" value ="${param.readerId}" required="required" disabled="disabled"/></td>	
	</tr>
	<tr>
		<td>用户名:</td>	
		<td><input type = "text" name="name" value ="${param.readerName}" required="required" /></td>	
	</tr>
	<tr>
		<td>密码:</td>	
		<td><input type = "text" name="password" value ="${param.readerPassword}" required="required"/></td>	
	</tr>
	<tr>
		<td>昵称:</td>	
		<td><input type = "text" name="xame" value ="${param.readerXame}" required="required" /></td>	
	</tr>
	
	<tr>
		<td>性别:</td>	
		<td><input type = "text" name="sex" value ="${param.readerSex}" required="required" /></td>	
	</tr>
	<tr>
		<td>头像:</td>
		<td><input type = "text" name="photo" value ="${param.readerPhoto}" required="required" disabled="disabled"/></td>	
	</tr>
	<tr>
		<td>手机:</td>
		<td><input type = "text" name="phone" value ="${param.readerPhone}" required="required"/></td>	
	</tr>
	<tr>
		<td>电子邮件:</td>
		<td><input type = "text" name="email" value ="${param.readerEmail}" required="required"/></td>	
	</tr>
	<tr>
		<td>余额:</td>
		<td><input type = "text" name="money" value ="${param.readerMoney}" required="required"/></td>	
	</tr>
	<tr>
		<td>
		<button onClick="update_a()">确认修改</button>
		</td>
	</tr>
	</table>
	</form>
	
<script type="text/javascript">
 
function update_a(){
	layer.confirm('确认要修改吗？',function(){
		$.ajax({
			type: 'POST',
			url: 'findAllBook.action',
			dataType: 'json',
			success: function(data){
				layer.msg('已修改!',{icon:1,time:1000});
			},
			error:function(data) {
				layer.msg('已修改!',{icon:1,time:1000});
			},
		});	
	});
} 

</script>
	
	
	
  </body>
</html>
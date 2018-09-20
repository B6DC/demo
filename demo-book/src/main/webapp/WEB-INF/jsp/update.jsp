<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
  <head>   
    <title>b</title>
  </head>
  <body  >
  <form  method = "post" action="update2.action"   enctype="multipart/form-data">
 
  <table align="center">
  <tr>
		<td>书号:</td>	
		<td><input type = "text" name="" value ="${param.bid}" required="required" disabled="disabled"/></td>	
	</tr>
	<tr>
		<td>作者:</td>	
		<td><input type = "text" name="author" value ="${param.booktype}" required="required" disabled="disabled"/></td>	
	</tr>
	<tr>
		<td>书名:</td>	
		<td><input type = "text" name="name" value ="${param.bookid}" required="required"/></td>	
	</tr>
	<tr>
		<td>类别:</td>	
		<td><input type = "text" name="type" value ="${param.bookname}" required="required" /></td>	
	</tr>
	
	<tr>
		<td>出版社:</td>	
		<td><input type = "text" name="pubname" value ="${param.bookauthor}" required="required"/></td>	
	</tr>
	<tr>
		<td>出版时间:</td>
		<td><input type = "text" name="pubtime" value ="${param.bookpubname}" required="required"/></td>	
	</tr>
	<tr>
		<td>价格:</td>
		<td><input type = "text" name="price" value ="${param.booktime}" required="required"/></td>	
	</tr>
	<tr>
		<td>数量:</td>
		<td><input type = "text" name="amount" value ="${param.bookprice}" required="required"/></td>	
	</tr>
	
	<tr>
		<td><button onClick="update_a()">确认修改</button></td>
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
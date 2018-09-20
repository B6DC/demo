<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/header.jsp" %>   
 <DIV>
	&gt;&gt;<B><a href="index.html">论坛首页</a></B>
</DIV>  
   <DIV  class="t" style="MARGIN-TOP: 15px" align="center"> 
	<FORM name="regForm" action="user.s?op=forget" method="post" >
		<br/><label class="label" >用户名：</label>
			<INPUT class="easyui-validatebox" data-options="required:true"missingMessage="用户名不能为空" tabIndex="1" type="text" maxLength="20" style="width:150px" name="uname" 
				value="">
		<br/><label class="label">邮箱账号：</label>
		<INPUT id="email" class="easyui-validatebox" data-options="required:true"missingMessage="邮箱不能为空" type="text" maxLength="20" style="width:150px" name="email"value="">
	     <br/>
			<INPUT class="btn" tabIndex="4" type="submit" value="获取邮箱验证码">
	</FORM>
</DIV>
    
<%@ include file="/footer.jsp" %>
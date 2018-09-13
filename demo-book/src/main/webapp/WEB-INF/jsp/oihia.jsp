<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Iaaa</title>
</head>
<body>
1
<table>
<c:forEach items="${list}" var="u">
			<tr class="text-c">
				<td>${u.manage_Id}</td>
				<td>${u.manage_Name}</td>
				<td>${u.manage_Password}</td>
				<td>${u.manage_phone}</td>
				<td>${u.manage_email}</td>
				<td>${u.manage_power}</td>
			</tr>
			</c:forEach>
</table>
</body>
</html>
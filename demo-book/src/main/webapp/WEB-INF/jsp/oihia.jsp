<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Iaaa</title>
</head>
<body>
<table>
1
<c:forEach items="${list}" var="u">
			<tr class="text-c">
				<td>${u.manage_Id}</td>
				<td>${u.manageName}</td>
				<td>${u.managePassword}</td>
				<td>${u.managephone}</td>
				<td>${u.manageemail}</td>
				<td>${u.managepower}</td>
			</tr>
			</c:forEach>
</table>
</body>
</html>
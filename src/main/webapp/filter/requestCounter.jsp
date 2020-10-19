<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, th, td{
		border : 1px solid blue;
	}
</style>
</head>
<body>
	<table>
		<tr>
			<th>uri</th>
			<th>counter</th>
		</tr>
		<tbody>
			<c:forEach items="${requestCounterMap }" var="req">
				<tr>
					<td>${req.key }</td>
					<td>${req.value}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Button Counter</title>
</head>
<body>
	<%
		Integer count = (Integer) session.getAttribute("count");
		if (count == null) {
			count = 0;
		}
		count++;
		session.setAttribute("count", count);
	%>
	<button onclick="location.reload();">Click me!</button>
	<p>Count1: <%= count %></p>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Success Form</title>
</head>

<body>
	<font color="green"><h2>Hello</h2></font>
	<h3>${msg}</h3>
	<font color="green"><h3>Welcome to Sort Application !</h3></font>
	<form action="/sort" method="POST" onsubmit="abc();">
		<input type="submit" value="Sort" />
	</form>

	<div id="myDIV">
		<c:if test="${not empty sortval}">

			<h2>Sorted Values</h2>
			<h3>${sortval}</h3>
			<h2>Time Required for Sorting</h2>
			<h3>${start}ms</h3>
		</c:if>
	</div>
</body>
</html>
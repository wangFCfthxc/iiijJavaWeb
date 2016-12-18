<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>

<%
String[] names = {"Panda","Tom","Brad","Mary","Jacky","Sun"};
pageContext.setAttribute("names", names);
pageContext.setAttribute("start", request.getParameter("start"));
pageContext.setAttribute("end", request.getParameter("end"));
pageContext.setAttribute("index", request.getParameter("start"));
pageContext.setAttribute("step", 1);
%>
<table border='1'>
<tr>
	<th>index</th>
	<th>Name</th>
	<th>status.index</th>
	<th>status.count</th>
	<th>status.isFirst</th>
	<th>status.isLast</th>
</tr>
<c:forEach items="${names }" var="name"
			begin="${start}" end="${end}" step="${step }"
			varStatus="status">
<tr>
<td>${index }<c:set var="index" value="${index + step }" /></td>
<td>${name }</td>
<td>${status.index}</td>
<td>${status.count}</td>
<td>${status.first}</td>
<td>${status.last}</td>
</tr>
</c:forEach>

</table>

</body>
</html>
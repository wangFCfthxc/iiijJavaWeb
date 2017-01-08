<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.iii.org.tw/panda/tags" prefix="mytag" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>
<mytag:if test="${param.name == 'panda' }">
doTag(): Hello, Panda
</mytag:if>

<%
	LinkedList<String> names = new LinkedList<>();
	names.add("Brad"); names.add("III"); names.add("OK");
	pageContext.setAttribute("names", names);
%>
<mytag:loop var="name" items="${names }">
Hello, ${name }<br />
</mytag:loop>

</body>
</html>
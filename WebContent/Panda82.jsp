<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>
	<%
		Date now = new Date();
		pageContext.setAttribute("now", now);
	%>
	<fmt:requestEncoding value="utf-8"/>
	<fmt:setLocale value="zh" />
	<fmt:formatDate value="${now }" />
	<br>
	<fmt:setLocale value="en" />
	<fmt:formatDate value="${now }" />
	<br>
</body>
</html>
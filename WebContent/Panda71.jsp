<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>

<%
	pageContext.setAttribute("name", "<h1>Panda</h1>");
%>
<c:out value="${name}" default="nobody" escapeXml="false" /><br>
<%= pageContext.getAttribute("name") %><br>
${name }

</body>
</html>
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
		String str = "1,Panda,male,0912-345678,2012-12-12,台中市南屯區";
		pageContext.setAttribute("str", str);
	%>

	<c:forTokens items="${str }" delims="," var="field"
	begin="${0}" end="${6}" step="${1 }">
		${field }<br>
	</c:forTokens>

</body>
</html>
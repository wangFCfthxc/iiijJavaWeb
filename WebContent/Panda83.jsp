<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>
	<fmt:setLocale value="zh" />
	<fmt:bundle basename="mesg">
		<fmt:message key="hello" />,<fmt:message key="who" />
		<br>
		<fmt:message key="msg1">
			<fmt:param value="${param.name }" />
			<fmt:param value="${param.x }" />
			<fmt:param value="${param.y }" />
			<fmt:param value="${param.x + param.y }" />
		</fmt:message>
	</fmt:bundle>
	<hr>
	<fmt:setLocale value="zh_TW" />
	<fmt:bundle basename="mesg">
		<fmt:message key="hello" />,<fmt:message key="who" />
		<br>
		<fmt:message key="msg1">
			<fmt:param value="${param.name }" />
			<fmt:param value="${param.x }" />
			<fmt:param value="${param.y }" />
			<fmt:param value="${param.x + param.y }" />
		</fmt:message>
	</fmt:bundle>
	<hr>
	<fmt:setLocale value="en" />
	<fmt:bundle basename="mesg">
		<fmt:message key="hello" />,<fmt:message key="who" />
		<br>
		<fmt:message key="msg1">
			<fmt:param value="${param.name }" />
			<fmt:param value="${param.x }" />
			<fmt:param value="${param.y }" />
			<fmt:param value="${param.x + param.y }" />
		</fmt:message>
	</fmt:bundle>
	<hr>
</body>
</html>
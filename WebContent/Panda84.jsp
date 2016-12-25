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
	<fmt:setBundle basename="mesg" var="def" />
	<fmt:setBundle basename="mesg_zh_TW" var="tw" />
	<fmt:message key="hello" bundle="${def }" />
	,
	<fmt:message key="who" bundle="${tw }" />
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:directive.page import="tw.Panda.j2ee.*" />
<%
Member member = new Member();
member.setId("003"); member.setName("John");
%>

<jsp:declaration>
int i;
String name;
</jsp:declaration>

<%! int j; %>

<jsp:scriptlet>
j++;
i += j;
name = "Panda";
</jsp:scriptlet>

<jsp:expression>
name
</jsp:expression>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>
Welcome, <%= member.getName() %><br>
<%= "i:" + i++ %><br>
<%= "j:" + j++ %><br>

</body>
</html>
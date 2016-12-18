<%@page import="java.util.LinkedList"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>
	<%
		String[] names = { "Panda", "Brad", "Tom" };
		request.setAttribute("urname", names);
	%>

	Name1: ${urname[0]}
	<br> Name2: ${urname[1]}
	<br> Name2: ${urname[2]}
	<br>
	<hr>
	<%
		HashMap<String, String> data = new HashMap<>();
		data.put("my name", "Panda");
		data.put("passwd", "123456");
		data.put("gender", "male");
		request.setAttribute("data", data);
	%>
	User: ${data["my name"] }
	<br> Password: ${data["passwd"] }
	<br> Gender: ${data["gender"] }
	<br>
	<hr>
	<%
	LinkedList<String> list = new LinkedList<>();
	list.add("AAAA");
	list.add("BBBB");
	list.add("CCCC");
	request.setAttribute("list", list);
	%>
	List1: ${list[1]}
	List1: ${list[param.i]}
	

</body>
</html>
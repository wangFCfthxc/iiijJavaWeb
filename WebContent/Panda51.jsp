<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="Panda54.jsp" %>
<%
String intX = request.getParameter("x");
String intY = request.getParameter("y");
int result = 0;
if(intX != null){
	Integer X = Integer.parseInt(intX);
	Integer Y = Integer.parseInt(intY);
	result = X + Y;
}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>
<form>
<input type="text" name="x" />
+
<input type="text" name="y" />
<input type="submit" value="=" />
<%= result  %>
</form>

</body>
</html>
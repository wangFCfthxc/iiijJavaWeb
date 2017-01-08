I am Panda58
<%
String x = request.getParameter("x");
String y = request.getParameter("y");
int r = Integer.parseInt(x) + Integer.parseInt(y);
out.write(x + "+" + y + "=" + r);
%>

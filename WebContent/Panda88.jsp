<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 

<sql:setDataSource 
	driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost/iii" user="root" password="root" 
	var="iii" scope="session" /> 
	

<sql:transaction dataSource="${iii }">
<sql:update var="n"
sql="insert into member (account,passwd,realname) values (?,?,?)">
	<sql:param value="${param.account }" />
	<sql:param value="${param.passwd }" />
	<sql:param value="Hello, World" />
</sql:update>

<sql:query var="lastid">
		select last_insert_id() as newid
	</sql:query>	
</sql:transaction>

<sql:query var="result" dataSource="${iii }">
select * from member
</sql:query>
			
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>


<c:if test="${n >= 1 }">
Last ID: ${lastid.rows[0].newid }
</c:if>
MySQL: Total: ${result.rowCount }
<hr>
<c:forEach items="${result.rows}" var="member">
${member.id }:${member.account }:${member.passwd }:${member.realname }<br>
</c:forEach>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource 
	driver="com.mysql.jdbc.Driver" 
	url="jdbc:mysql://localhost/iii" user="root" password="root" 
	var="iii" scope="session" /> 
    
<sql:query var="result" dataSource="${iii }">
select * from mydog where id = ${param.id}
</sql:query>

<c:forEach items="${result.rows}" var="pos">
${pos.lat }:${pos.lng }<br>
</c:forEach>
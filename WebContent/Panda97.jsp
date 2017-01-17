<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="pd" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.iii.org.tw/panda/tags" prefix="myfn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Panda Big Company</title>
</head>
<body>

${myfn:sayHello("Panda") }
<hr>
${myfn:sayHello2('Panda','Brad') }

<hr>
<c:set var="account" value="panda" />
<c:if test="${fn:contains(account, 'panda') }">
${fn:length(account) }
</c:if>
<hr>
<pd:MyCal x="10" y="3">
	10 + 3 = ${addResult }<br />
	10 - 3 = ${subResult }<br />
	10 * 3 = ${multiplyResult }<br />
	10 / 3 = ${divideResult }<br />
</pd:MyCal>
<hr>
<pd:MyData title='詳細資料' 姓名='Brad' 性別='male' 年齡='50' />



</body>
</html>
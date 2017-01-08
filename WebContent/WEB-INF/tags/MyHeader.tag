<%@tag description="My Header" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@attribute name="pagename" %>
<%@attribute name="func" %>
<%@attribute name="url" %>
<%@attribute name="year" %>
<h1>Panda Big Company</h1>
<hr />
${pagename }:<a href="${url }">${func }</a>
<hr />
<jsp:doBody />
<hr />
copyright... ${year}
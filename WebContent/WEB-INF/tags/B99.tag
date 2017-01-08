<%@tag description="9 x 9" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<table border='1' width='100%'>
<c:forEach begin="1" end="2" var="r">
	<tr>
		<c:forEach begin="2" end="5" var="y">
			<td>
				<c:forEach begin="1" end="9" var="x">
					${y+(r-1)*4 } x ${x} = ${(y+(r-1)*4) * x }<br>
				</c:forEach>
			</td>
		</c:forEach>
	</tr>
</c:forEach>	
</table>
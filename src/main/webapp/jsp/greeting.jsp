<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Greeting!</title>
    </head>
    <body>
        <jsp:include page="include/menu.jsp" flush="true" />
        <h2>Greeting, <c:out value="${user.getName()}"/>! </h2>
    </body>
</html>

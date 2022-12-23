<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Show users</title>
    </head>
    <body>
        <jsp:include page="include/menu.jsp" flush="true" />
        <table>
            <thead>
                <td><b>Name</b></td>
                <td><b>Login</b></td>
            </thead>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.name}</td>
                    <td>${user.login}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

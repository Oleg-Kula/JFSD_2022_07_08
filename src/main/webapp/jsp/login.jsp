<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>login</title>
    </head>

    <body>
        <c:if test="${not empty message}">
            <p>${message}</p>
        </c:if>

        <form action="${pageContext.request.contextPath}/login" method="post">
            <label for="login"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" id="login" name="login">

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" id="password" name="password">

            <button type="submit">Login</button>
        </form>
    </body>
</html>

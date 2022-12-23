<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>menu</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/users" method="get">
            <button type="submit">Show users</button>
        </form>
        <form action="${pageContext.request.contextPath}/logout" method="post">
            <button type="submit">Logout</button>
        </form>
        <hr/>
    </body>
</html>

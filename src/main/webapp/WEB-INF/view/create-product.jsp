<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 024 24.11.21
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<%--@elvariable id="product" type="ru.azor.entity.Product"--%>
<form:form action="create" modelAttribute="product">
    <form:hidden path="id" value="${product.id}"/>
    Title:<form:input path="title"/>
    <br>
    Cost:<form:input path="cost"/>
    <br>
    <input type="submit" value="Submit">
</form:form>
</body>
</html>
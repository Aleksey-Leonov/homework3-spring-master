<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 023 23.11.21
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<h2>Product id: ${product.id}</h2>
<h2>Product title: ${product.title}</h2>
<h2>Product cost: ${product.cost}</h2>
<br>
<c:url var="deleteUrl" value="/product/delete">
    <c:param name="id" value="${product.id}"/>
</c:url>
<a href="${deleteUrl}">Delete</a>
</body>
</html>
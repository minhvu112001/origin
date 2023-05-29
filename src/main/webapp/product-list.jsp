<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Product List</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<h1>Product List</h1>
<a class="button add-button" href="products?action=new">Add new product</a>
<table>
    <tr>
        <th>Id</th>
        <th>Product Name</th>
        <th>Price</th>
        <th>Image</th>
        <th>Action</th>
    </tr>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td>${product.id}</td>
            <td>${product.productName}</td>
            <td>${product.price}</td>
            <td><img src="${product.imageUrl}" alt="Product Image" class="image-container"></td>
            <td>
                <a class="button" href="products?action=edit&id=${product.id}">Edit</a>
                <a class="button" href="products?action=delete&id=${product.id}" onclick="return confirm('Are you sure you want to delete this product?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
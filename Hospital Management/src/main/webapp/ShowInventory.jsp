<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
    h1 {
        padding-left: 100px;
        color: red;
        text-decoration: underline;
    }
    a:hover {
        color: red;
    }
    .table{
    	width:600px;
    	margin: 20px 0 0 100px;
    }
</style>
</head>
<body>
<h1>Inventory Details</h1>
<table class="table table-hover">
    <thead>
        <tr>
            <th>Id</th>
            <th>Item Name</th>
            <th>Quantity</th>
            
        </tr>
    </thead>
    <tbody>
        <c:if test="${IList != null}">
            <c:forEach items="${IList}" var="e">
                <tr>
                    <td>${e.itemId}</td> <!-- Corrected to use EL notation for fields -->
                    <td>${e.itemName}</td>
                    <td>${e.quantity}</td>
                    
                </tr>
            </c:forEach>
        </c:if>
    </tbody>
</table>
</body>
</html>

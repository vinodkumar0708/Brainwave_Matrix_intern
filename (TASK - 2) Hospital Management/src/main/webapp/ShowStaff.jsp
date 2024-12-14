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
        padding-left: 30px;
        color: red;
        text-decoration: underline;
    }
    a:hover {
        color: red;
    }
</style>
</head>
<body>
<h1>Staff Details</h1>
<table class="table table-hover">
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Role</th>
            <th>Department</th>
            <th>Phone Number</th>
            
        </tr>
    </thead>
    <tbody>
        <c:if test="${List != null}">
            <c:forEach items="${List}" var="e">
                <tr>
                    <td>${e.staffId}</td> <!-- Corrected to use EL notation for fields -->
                    <td>${e.name}</td>
                    <td>${e.role}</td>
                    <td>${e.department}</td>
                    <td>${e.phoneNumber}</td>
                    
                </tr>
            </c:forEach>
        </c:if>
    </tbody>
</table>
</body>
</html>

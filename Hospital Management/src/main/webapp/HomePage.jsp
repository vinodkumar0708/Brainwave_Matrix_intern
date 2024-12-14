<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
crossorigin="anonymous">
<style>
	*{
		margin:0;
		padding:0;
		box-sizing:border-box;
	}
	body{
		width:100%;
		height:100vh;
		background-color:gray;
	}
	.navbar{
		height:80px;
	}
	
</style>
</head>
<body>
    <nav class="navbar" style="background-color: #e3f2fd;">
        <div class="container-fluid">
            <a class="navbar-brand" href="HomePage.jsp">
              <img src="wh.jpg" alt="" width="30" height="24" class="d-inline-block align-text-top">
              Hospital
            </a>
        
            <form class="d-flex"  role="search">
              <input class="form-control me-2" id="search" type="search" placeholder="Patient Name" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        
            <form action="studentDetails" method="post">
                <button class="btn btn-outline-success me-4" type="submit" name="action" value="Add">Add Patient</button>
                <button class="btn btn-outline-secondary me-4" type="submit" name="action" value="Appointment">Take Appointment</button>
                <button class="btn btn-outline-primary me-4" type="submit" name="action" value="Bill">Bills</button>
                <button class="btn btn-outline-info me-4" type="submit" name="action" value="Inventory">Inventory</button> 
                <button class="btn btn-outline-info me-4" type="submit" name="action" value="Staff">Staff</button> 
                <button class="btn btn-outline-info me-4" type="submit" name="action" value="Record">Health Records</button> 
                <button class="btn btn-outline-warning me-4" type="submit" name="action" value="AllRecord">All Records</button> 
            </form>
        </div>
    </nav>
    <div>
    	<marquee>----   WellCome to The Hospital!...   ---</marquee>
    </div>
</body>
</html>

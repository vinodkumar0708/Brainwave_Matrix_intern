<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="HomePage.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inventory Form Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
crossorigin="anonymous">
<style>
	* {
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	body {
		width: 100%;
		height: 100vh;
		background-color: gray;
	}
	.cont {
		margin-top:80px;
		width: 600px;
		border: 2px solid black;
		padding: 20px 50px;
		font-size: 18px; /* Changed font size for better readability */
		background-color: whitesmoke;
		border-radius: 10px;
	}
	.cont .form-control {
		margin: 10px 0; /* Added spacing between input fields */
	}
	a button{
		margin:0 200px;
	}
</style>
</head>
<body>
	<div class="container-fluid cont">
	
		<form action="addI" method="post">
		  	<div class="col-md-9">
			    <label class="form-label">Item Name</label>
			    <input type="text" class="form-control" name="txtI-name" required>
			</div>
			
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="inputPhone" class="form-label">Quantity</label>
					<input type="number" class="form-control" name="txtI-quantity" id="inputPhone" required>
				</div>
			</div>
			
			<div class="row">
				<div class="col-12">
					<button type="submit" class="btn btn-primary">Add</button>
				</div>
			</div>
		</form>
<a href="showI"><button class="btn btn-primary" name="action"> Show </button></a>

	</div>
</body>
</html>
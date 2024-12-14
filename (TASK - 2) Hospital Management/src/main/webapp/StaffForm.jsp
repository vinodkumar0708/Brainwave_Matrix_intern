<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="HomePage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Staff Form Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
crossorigin="anonymous">
<style>
	*{
		margin:0;
		padding:0;
		border-sizing:border-box;
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
		<form action="addS" method="post">
		  	<div class="col-md-10">
			    <label class="form-label">Name</label>
			    <input type="text" class="form-control" name="txtS-name" required >
			</div>
			
			<div class="col-md-10">
			    <label class="form-label">Role</label>
			    <input type="text" class="form-control" name="txtS-role" required >
			</div>
			
			<div class="col-md-10">
			    <label class="form-label">Department</label>
			    <input type="text" class="form-control" name="txtS-department" required >
			</div>
			
			<div class="col-md-10">
			    <label class="form-label">PhoneNumber</label>
			    <input type="text" class="form-control" name="txtS-phoneNumber" required >
			</div>
			
			<div class="col-6">
			    <button type="submit" class="btn btn-primary"> Add </button>
			</div>
		</form>
<a href="showS"><button class="btn btn-primary" name="action"> Show </button></a>
		
	</div>
</body>
</html>
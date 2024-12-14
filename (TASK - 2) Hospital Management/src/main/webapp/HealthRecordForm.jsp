<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="HomePage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Health Recode From Page</title>
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
		padding: 20px;
		font-size: 18px; /* Changed font size for better readability */
		background-color: whitesmoke;
		border-radius: 10px;
	}
	.cont .form-control {
		margin: 20px 30px; /* Added spacing between input fields */
	}
</style>
</head>
<body>
	<div class="container-fluid cont">
		<form action="addHR" method="post">
			<div class="col-md-4">
			    <label class="form-label">Patient Id</label>
			    <input type="number" class="form-control" name="txtP-id" required>
			</div>
			
			<div class="col-md-8">
			    <label class="form-label">Diagnosis</label>
			    <input type="text" class="form-control" name="txt-diognosis" required>
			</div>
			
			<div class="col-md-8">
			    <label class="form-label">Treatment</label>
			    <input type="text" class="form-control" name="txt-treatment" required>
			</div>
			
			<%
				if(request.getAttribute("message")!=null){
					out.println(request.getAttribute("message"));
				}
			%>
			
			<div class="row">
				<div class="col-12">
					<button type="submit" class="btn btn-primary">Add Record</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
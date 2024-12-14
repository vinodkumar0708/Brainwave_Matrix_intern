<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="HomePage.jsp" %>
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
	
</style>
</head>
<body>
	<div class="container-fluid cont">
		<form action="addB" method="post">
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="inputPhone" class="form-label">Patient Id</label>
					<input type="number" class="form-control" name="txtP-id" id="inputPhone" required>
				</div>
			</div>
			
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="inputPhone" class="form-label">Amount</label>
					<input type="number" class="form-control" name="txt-Amount" id="inputPhone" required>
				</div>
			</div>
			
			<%
				if(request.getAttribute("message")!=null){
					out.println(request.getAttribute("message"));
				}
			%>
			
			<div class="row">
				<div class="col-12">
					<button type="submit" class="btn btn-primary">Add Bill</button>
					<button type="button" class="btn btn-primary" onclick="popup()" >Receipt</button>
					
				</div>
			</div>
		</form>

		<!-- Button to trigger the prompt for Patient ID -->
	</div>
	
	<script>
		function popup() {
			// Prompt user to enter a Patient ID
			let patientId = prompt("Please enter Patient Id Number:");
			if (patientId) {
				// Redirect to showB with the entered Patient ID as a query parameter
				window.location.href = "showB?id=" + patientId;
			}
		}
	</script>
</body>
</html>

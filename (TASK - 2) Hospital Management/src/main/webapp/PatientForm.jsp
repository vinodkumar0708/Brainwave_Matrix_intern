<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="HomePage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Form Page</title>
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
		font-size: 18px; 
		background-color: whitesmoke;
		border-radius: 10px;
	}
	.cont .form-control {
		margin: 10px 0;
	}
</style>
</head>
<body>
	<div class="container-fluid cont">
		<form action="addP" method="post">
			<div class="row">
				<div class="col-12">
					<input type="text" class="form-control" name="txtP-name" placeholder="Patient Name" aria-label="Patient Name" required>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-2">
					<label for="inputAge" class="form-label">Age</label>
					<input type="text" class="form-control" name="txtP-age" id="inputAge" required>
				</div>
			</div>
			
			<fieldset class="row mb-3">
				<legend class="col-form-label col-sm-2 pt-0">Gender</legend>
				<div class="col-sm-10">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="txtP-gender" id="gridRadios1" value="male" checked required>
						<label class="form-check-label" for="gridRadios1">
							Male
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="txtP-gender" id="gridRadios2" value="female" required>
						<label class="form-check-label" for="gridRadios2">
							Female
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="txtP-gender" id="gridRadios3" value="other" required>
						<label class="form-check-label" for="gridRadios3">
							Others
						</label>
					</div>
				</div>
			</fieldset>
			
			<div class="row">
				<div class="col-12">
					<label for="inputAddress" class="form-label">Address</label>
					<input type="text" class="form-control" name="txtP-address" id="inputAddress" placeholder="1234 Main St" required>
				</div>
			</div>
			
			<div class="row">
				<div class="col-12 col-md-6">
					<label for="inputPhone" class="form-label">Phone Number</label>
					<input type="text" class="form-control" name="txtP-phoneNumber" id="inputPhone" required>
				</div>
			</div>
			
			<div class="row">
				<div class="col-12">
					<button type="submit" onclick="showAlert()" class="btn btn-primary">Register</button>
				</div>
			</div>
		</form>
	</div>

</body>
</html>

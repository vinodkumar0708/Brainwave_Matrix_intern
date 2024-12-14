<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient and Appointment Records</title>
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
    		
    	}
    	.container-fluid{
    		width:90%;
    		margin-left:30px;
    	}
    </style>
</head>
<body>
    <div class="container-fluid "><br>
        <h1>-------------====PATIENTS RECORDS====----------</h1><br>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Patient Id</th>
                    <th scope="col">Patient Name</th>
                    <th scope="col">Patient Age</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Address</th>
                    <th scope="col">Phone Number</th>  
                    <th scope="col">Actions</th>  
                </tr>
            </thead>
            
            <tbody>
                <c:forEach items="${PList}" var="p" >
			 	<tr>
                  <td style="color:red; font-size:22px;">${p.id}</td>
                  <td>${p.name}</td>
               	  <td>${p.age}</td>
               	  <td>${p.gender}</td>
                  <td>${p.address}</td>
                  <td>${p.phoneNumber}</td> 
                   <td><a href="delete?Id=${p.id}">Delete</a></td>    
                </tr>
               </c:forEach>                  
            </tbody>
            
        </table><br>
        
        <h1>------------====APPOINTMENT RECORDS====----------</h1><br>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Appointment Id</th>
                    <th scope="col">Patient Id</th>
                    <th scope="col">Appointment Date</th>
                    <th scope="col">Doctor Name</th>
                </tr>
            </thead>
            
            <tbody>
                <c:forEach items="${AList}" var="a" >
			 	<tr>
                  <td>${a.appointmentId}</td>
                  <td style="color:red; font-size:22px;">${a.getPatient().getId()}</td>
               	  <td>${a.appointmentDate}</td>
               	  <td>${a.doctorName}</td> 
                </tr>
               </c:forEach>                  
            </tbody>
            
        </table><br>
        
         <h1>------------====HEALTH RECORDS====----------</h1><br>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Record Id</th>
                    <th scope="col">Patient Id</th>
                    <th scope="col">Diagnosis</th>
                    <th scope="col">Record Date</th>
                </tr>
            </thead>
            
            <tbody>
                <c:forEach items="${HList}" var="h" >
			 	<tr>
                  <td>${h.recordId}</td>
                  <td style="color:red; font-size:22px;">${h.getPatient().getId()}</td>
               	  <td>${h.diagnosis}</td>
               	  <td>${h.recordDate}</td> 
                </tr>
               </c:forEach>                  
            </tbody>
            
        </table><br>
        
         <h1>------------====BILLS RECORDS====----------</h1><br>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Bill Id</th>
                    <th scope="col">Patient Id</th>
                    <th scope="col">Amount</th>
                    <th scope="col">Bill Date</th>
                </tr>
            </thead>
            
            <tbody>
                <c:forEach items="${BList}" var="b" >
			 	<tr>
                  <td>${b.billId}</td>
                  <td style="color:red; font-size:22px;">${b.getPatient().getId()}</td>
               	  <td>${b.amount}</td>
               	  <td>${b.billDate}</td> 
                </tr>
               </c:forEach>                  
            </tbody>
            
        </table><br>
        
         <h1>------------====INVENTORY RECORDS====----------</h1><br>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Item Id</th>
                    <th scope="col">Item Name</th>
                    <th scope="col">quantity</th>
                </tr>
            </thead>
            
            <tbody>
                <c:forEach items="${IList}" var="i" >
			 	<tr>
                  <td>${i.itemId}</td>
               	  <td>${i.itemName}</td>
               	  <td>${i.quantity}</td>
               	  <td>
                        
                        <a href="deletei?Id=${i.itemId}">Delete</a>
                    </td> 
                </tr>
               </c:forEach>                  
            </tbody>
            
        </table><br>
        
         <h1>------------====STAFF RECORDS====----------</h1><br>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Staff Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Role</th>
                    <th scope="col">Department</th>
                    <th scope="col">Phone Number</th>
                </tr>
            </thead>
            
            <tbody>
                <c:forEach items="${SList}" var="s" >
			 	<tr>
                  <td>${s.staffId}</td>
                  <td>${s.name}</td>
               	  <td>${s.role}</td>
               	  <td>${s.department}</td> 
               	  <td>${s.phoneNumber}</td> 
               	  <td>
                         
                        <a href="deletes?Id=${s.staffId}">Delete</a>
                    </td>
                </tr>
               </c:forEach>                  
            </tbody>
            
        </table>
    </div>
</body>
</html>

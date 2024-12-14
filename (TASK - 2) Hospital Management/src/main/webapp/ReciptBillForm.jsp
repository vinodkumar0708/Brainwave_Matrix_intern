<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ include file="HomePage.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Receipt Bill Form</title>
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
            margin-top: 80px;
            width: 600px;
            border: 2px solid black;
            padding: 20px 50px;
            font-size: 18px;
            background-color: whitesmoke;
            border-radius: 10px;
        }

        .form-control {
            margin: 10px 0;
        }

        a button {
            margin: 0 200px;
        }
    </style>
</head>
<body>
    <div class="container-fluid cont">
        <c:if test="${PList != null || HList!=null || BList}">
            <div class="col-md-9">
                <label class="form-label">Patient Id</label>
                <input type="text" class="form-control" value="${PList.id}" >
            </div>

            <div class="col-md-9">
                <label class="form-label">Patient Name</label>
                <input type="text" class="form-control" value="${PList.name}">
            </div>

            <div class="row">
                <div class="col-12 col-md-6">
                    <label for="inputPhone" class="form-label">Age</label>
                    <input type="number" class="form-control" value="${PList.age}" required readonly>
                </div>
            </div>

            <div class="col-md-9">
                <label class="form-label">Gender</label>
                <input type="text" class="form-control" value="${PList.gender}" >
            </div>

            <div class="row">
                <div class="col-12 col-md-6">
                    <label for="inputPhone" class="form-label">Address</label>
                    <input type="text" class="form-control" value="${PList.address}" >
                </div>
            </div>

            <div class="col-md-9">
                <label class="form-label">Phone Number</label>
                <input type="text" class="form-control" value="${PList.phoneNumber}" required readonly>
            </div>

            <form action="addBill" method="post">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <label for="inputPhone" class="form-label">Diagnosis</label>
                        <input type="text" class="form-control" value="${HList.diagnosis}" >
                    </div>
                </div>

                <div class="col-md-9">
                    <label class="form-label">Treatment</label>
                    <input type="text" class="form-control" value="${HList.treatment}" >
                </div>

                <div class="row">
                    <div class="col-12 col-md-6">
                        <label for="inputPhone" class="form-label">Amount</label>
                        <input type="number" class="form-control" value="${BList.amount}" id="amount">
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-md-6">
                        <label for="inputPhone" class="form-label">Payed Amount</label>
                        <input type="number" class="form-control" id="payedAmount" name="txt-payAmount" >
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-md-6">
                        <label for="inputPhone" class="form-label">Total Amount</label>
                        <input type="number" class="form-control" name="txt-totalAmount" id="totalAmount" readonly>
                    </div>
                </div>

                <button class="btn btn-primary">Take Receipt</button>
            </form>
        </c:if>
    </div>

    <script>
        // Function to calculate the total amount
        function updateTotalAmount() {
            var amount = parseFloat(document.getElementById("amount").value);
            var payedAmount = parseFloat(document.getElementById("payedAmount").value);

            // Ensure both amounts are numbers and then calculate the total
            if (!isNaN(amount) && !isNaN(payedAmount)) {
                var totalAmount = amount - payedAmount;
                document.getElementById("totalAmount").value = totalAmount.toFixed(2); // Keep two decimal places
            }
        }

        // Event listener to update the total amount whenever the payed amount changes
        document.getElementById("payedAmount").addEventListener("input", updateTotalAmount);
    </script>
</body>
</html>

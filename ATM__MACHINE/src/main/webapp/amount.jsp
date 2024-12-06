<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Draw Amount</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body {
        background-color: gray;
        width: 100%;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .cont {
        position: fixed;
        width: 500px;
        height: 300px;
         background: linear-gradient(rgb(110, 152, 190), rgb(125, 181, 206), rgb(142, 209, 254),
	     rgb(109, 152, 187));
     /*   background: linear-gradient(rgb(15, 83, 115), rgb(9, 75, 80), rgb(1, 65, 97));*/
        display: flex;
        justify-content: center;
        align-items: center;
        border: 5px solid black;
        flex-direction: column;
    }
    #amount {
        width: 150px;
        height: 40px;
        letter-spacing: 3px;
        text-align:center;
        padding: 8px 15px;
        border-radius: 10px;
        font-size: 25px;
        -moz-appearance: textfield; /* Firefox */
    }
    /* Chrome, Safari, Edge, Opera */
    #amount::-webkit-outer-spin-button,
    #amount::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }
    .sub {
        position: relative;
        left: 195px;
        top: 70px;
    }
    #submit {
        margin: 10px 0;
        padding: 10px;
        font-weight: bolder;
        border: 1px solid white;
        width: 100px;
        letter-spacing: 6px;
        font-size: 20px;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
        cursor: pointer;
        background: linear-gradient(rgb(80, 145, 199), rgb(144, 220, 255));
    }
    label {
        font-size: 30px;
        color: white;
    }
    .main {
        position: relative;
        border: 2px solid black;
        width: 600px;
        height: 400px;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #797776;
    }
    .btnO {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        row-gap: 8px;
        column-gap: 500px;
        padding: 1px;
        position: relative;
        top: 50px;
    }
    .btnO button {
        width: 30px;
        height: 30px;
        border: 3px solid white;
        background-color: #797776;
        margin: 0 0 20px 0;
        cursor: pointer;
    }
</style>
</head>
<body>
<form action="withdraw" method="post">
    <div class="main">
        <div class="btnO">
            <button></button>
            <button></button>
            <button></button>
            <button></button>
            <button></button>
            <button type="submit"></button>
        </div>
        <div class="cont">
            <label>Enter Amount</label>
            <input type="number" name="txtAmount" id="amount" min="100" maxlength="6" step="100" required>
            <%
                if (request.getAttribute("message") != null) {
                    out.println(request.getAttribute("message"));
                }
            %>
            <div class="sub">
                <button type="submit" id="submit">Ok</button>
            </div>
        </div>
    </div>
</form>

<script>
    document.getElementById("amount").focus();
</script>
</body>
</html>

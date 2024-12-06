<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        background: linear-gradient(rgb(110, 152, 190), rgb(125, 181, 206), rgb(142, 209, 254), rgb(109, 152, 187));
        display: flex;
        justify-content: center;
        align-items: center;
        border: 5px solid black;
        flex-direction: column;
    }
    .options {
        display: flex;
        flex-direction: column;
        justify-content: end;
        align-items: end;
        width: 300px;
        margin: 100px 0 0 197px;
    }
    .options button {
        width: 200px;
        height: 40px;
        background-color: whitesmoke;
        margin: 10px 2px;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
        cursor: pointer;
        font-size: 20px;
        letter-spacing: 4px;
        font-weight: bold;
        border: 1px solid white;
        background: linear-gradient(rgb(80, 145, 199), rgb(144, 220, 255));
    }
    .cont h1 {
        color: white;
        padding-top: 30px;
        text-align: center;
    }
    .main {
        position: fixed;
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

<div class="main">
    <div class="btnO">
        <button></button>
        <button></button>
        <button></button>
        <button></button>
        <button></button>
        <a href="index.jsp"><button id="autoClickButton"></button></a>
    </div>
    <div class="cont">
        <h1 style="color:white">Your current amount is <br>
            <%
                if (request.getAttribute("balanceAmount") != null) {
                    out.println(request.getAttribute("balanceAmount"));
                }
            %>
        </h1>
        <div class="options">
            <a href="index.jsp"><button>Exit</button></a>
        </div>
    </div>
</div>

<script>
    // Set a timer to auto-click the button after 1 minute (60000 milliseconds)
    setTimeout(function() {
        document.getElementById("autoClickButton").click();
    }, 8000);
</script>
</body>
</html>

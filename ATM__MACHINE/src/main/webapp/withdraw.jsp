<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WithDraw</title>
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
        width: 500px;
        height: 300px;
        background: linear-gradient(rgb(110, 152, 190), rgb(125, 181, 206), rgb(142, 209, 254), rgb(109, 152, 187));
        display: flex;
        justify-content: center;
        align-items: center;
        border: 5px solid black;
        flex-direction: column;
        position: fixed;
    }
    .text {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        row-gap: 8px;
        padding: 10px;
        width: 150px;
        height: 150px;
    }
    #password {
        width: 150px;
        height: 50px;
        letter-spacing: 6px;
        border: none;
        text-align:center;
        border-radius: 10px;
        font-size: 25px;
        background-color: #ffff;
    }
    .sub {
        position: relative;
        left: 160px;
        top: 24px;
    }
    #submit {
        margin: 10px 0;
        padding: 10px;
        font-weight: bolder;
        border: 1px solid white;
        width: 170px;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
        font-size: 20px;
        letter-spacing: 4px;
        background: linear-gradient(rgb(80, 145, 199), rgb(144, 220, 255));
        cursor: pointer;
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
        border: 3px solid whitesmoke;
        background-color: #797776;
        margin: 0 0 20px 0;
        cursor: pointer;
    }
</style>
</head>
<body>
<form action="pin" method="post">
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
            <div class="text">
                <label>Enter Pin</label>
                <input type="password" name="txtPassword" id="password" maxlength="4" required>
                <%
                    if (request.getAttribute("message") != null) {
                        out.println(request.getAttribute("message"));
                    }
                %>
            </div>
            <div class="sub">
                <button type="submit" id="submit">If Correct</button>
            </div>
        </div>
    </div>
</form>

<script>
    document.getElementById("password").focus();
</script>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
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
        flex-direction: column;
        border: 5px solid black;
        position: fixed;
        padding-top: 25px;
        align-items: end;
    }
    #marquee {
        height: 50px;
        font-size: 35px;
        padding: 8px;
        background-color: whitesmoke;
    }
    .btn {
        position: relative;
        top: 90px;
    }
    #link {
        width: 150px;
        padding: 10px;
        font-size: 20px;
        font-weight: bold;
        cursor: pointer;
        border: 1px solid white;
        letter-spacing: 2px;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
        background: linear-gradient(rgb(80, 145, 199), rgb(144, 220, 255));
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
        padding: 0px;
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
        <a href="withdraw.jsp"><button></button></a>
        <button></button>
        <button></button>
    </div>
    <div class="cont">
        <marquee direction="left" id="marquee">
            Welcome To ATM!..
        </marquee>
        <div class="btn">
            <label></label>
            <a href="withdraw.jsp"><button id="link">Insert Card</button></a>
        </div>
    </div>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
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
        border:5px solid black;
         background: linear-gradient(rgb(110, 152, 190), rgb(125, 181, 206), rgb(142, 209, 254),
	     rgb(109, 152, 187));
      /*  background: linear-gradient(rgb(15, 83, 115), rgb(9, 75, 80), rgb(1, 65, 97));*/
        position:fixed;
    }
    .cont ul {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        row-gap: 8px;
        column-gap: 10px;
        margin-top:100px;
    }
    .cont ul li {
        list-style: none;
        border: 1px solid white;
        padding: 10px;
        margin-top: 10px;
        letter-spacing: 4px;
        position: relative;
        background:linear-gradient(rgb(80, 145, 199),rgb(144, 220, 255));
    }
    a {
        text-decoration: none;
        color: white;
        font-weight: bold;
        cursor:pointer;
    }
    .main {
	    position:fixed;
	    border: 2px solid black;
	    width: 600px;
	    height: 400px;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    background-color: #797776;
	  /*  background: linear-gradient(rgb(110, 152, 190), rgb(125, 181, 216), rgb(142, 209, 254),
	     rgb(109, 152, 187));*/
	}
	.btnO{
		 display: grid;
	     grid-template-columns: repeat(2, 1fr);
	     row-gap: 8px;
	     column-gap: 500px;
	     padding: 1px;
	    position:relative;
	    top:50px;
	}
	.btnO button{
		width:30px;
		height:30px;
		border:3px solid white;
		background-color:#797776;
		margin:0 0 20px 0;
		cursor:pointer;
	}

</style>
</head>
<body>
	<div class="main">
		<div class="btnO">
			<a href="amount.jsp"><button></button></a>
			<a href="#"><button></button></a>
			<a href="#"><button></button></a>
			<a href="#"><button></button></a>
			<a href="balance"><button></button></a>
			<a href="#"><button></button></a>
		</div>
	</div>
    <div class="cont">
        <ul>
            <li><a href="amount.jsp">CASH WITHDRAW</a></li>
            <li><a href="#">TRANSFER</a></li>
            <li><a href="#">CARD SETTINGS</a></li>
            <li><a href="#">BILL PAYMENTS</a></li>
            <li><a href="balance">BALANCE INQUIRY</a></li>
            <li><a href="#">DONATION/OTHER</a></li>
        </ul>
    </div>


</body>
</html>

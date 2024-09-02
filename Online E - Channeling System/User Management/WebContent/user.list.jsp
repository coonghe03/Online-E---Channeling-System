<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Refund Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	
	<style>
*{
    padding: 0px;
    margin: 0px;
    box-sizing: border-box;
    list-style: none;
    font-family: 'Poppins', sans-serif;
}

body{
	background: url('./image?i=webback.jpg');
	background-size: fill;
}

.navbar{
    width: 100%;
    height: 80px;
    background-color: #fee;
    display: flex;
    justify-content: space-around;
    align-items: center;
    color: #000;
}
.menu ul{
    display: flex;
    align-items: center;
}
.menu ul li a{
    text-decoration: none;
    color: #000;
    padding: 5px 12px;
    letter-spacing: 2px;
    font-size: 18px;
}
.menu ul li a:hover{
    border-bottom: 4px solid #000;
    transition: 0.4s;
}
.login a{
    text-decoration: none;
    color: #000;
    font-size: 18px;
    font-weight: bold;
    border-radius: 12px;
    padding: 12px 30px;
    border: 2px solid #b61ee9;
}
.login a:hover{
   background-color: #b61ee9;
   transition: 0.6s; 
}



.footer{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}
.fcontainer{
    background-color: black;
}
.row{
    display: flex;
    justify-content: space-between;
    padding: 40px 100px;
}
.footer-col ul{
    list-style: none;
}
.footer-col h4{
    color: white;
    margin-top: 25px;
    font-size: 22px;
    position: relative;
    font-family: 'Ubuntu', sans-serif;
}
.footer-col h3::before{
    content: '';
    width: 70px;
    height: 2px;
    position: absolute;
    background-color: #b61ee9;
    bottom: -10px;
}
.footer-col ul li{
    padding: 10px 0;
}
.footer-col ul li a{
    color: white;
    text-decoration: none;
    font-size: 16px;
    opacity: 0.7;
    transition: 0.5s;
}
.footer-col ul li a:hover{
    opacity: 1;
}
.footer-col form input{
    border: none;
    width: 250px;
    height: 45px;
    display: block;
    padding-left: 20px;
    margin: 14px 0;
}
.footer-col .inputSubmit{
    padding: 0px 20px;
    background-color: #b61ee9;
    border: none;
    color: white;
}
.col p{
    color: white;
}
.row hr{
    opacity: 0.7;
}
.row .socialIcons i{
    display: inline-block;
    color: white;
    font-size: 20px;
    margin: 0 15px;
    transition: 0.5s;
}
.row .socialIcons i:hover{
    color: #b61ee9; 
}
@media (max-width: 600px){
    footer .row{
        flex-direction: column;
        padding: 20px 30px;
    }

    footer .footer-col ul{
        margin-left: 20px;
        margin-bottom: 20px;
    }
    .footer-col input{
        width: 100%;
    }
}
</style>
</head>
<body>

	<header>
            
            <div class="navbar">
                <div class="logo">
                    <h1>E-Channeling</h1>    
                </div>
                <div class="menu">
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Channeling</a></li>
                        <li><a href="#">Lab Test</a></li>
                        <li><a href="#">Order Medicine</a></li>
                        <li><a href="#">Claim Refund</a></li>
                        <li><a href="#">Contact Us</a></li>    
                    </ul>               
                </div>
                <div class="login">
                    <a href="#">Login</a>
                    <a href="#">Register</a>
                </div>
            </div>
        </header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					Refund Request</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>TransactionId</th>
						<th>Name</th>
						<th>Email</th>
						<th>Reason</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.transactionId}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.reason}" /></td>
							<td><a href="edit?transactionId=<c:out value='${user.transactionId}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?transactionId=<c:out value='${user.transactionId}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
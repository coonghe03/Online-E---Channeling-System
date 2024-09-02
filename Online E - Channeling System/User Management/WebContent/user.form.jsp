<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Refund Application</title>
<style>
*{
    padding: 0px;
    margin: 0px;
    box-sizing: border-box;
    list-style: none;
    font-family: 'Poppins', sans-serif;
}

body{
	background: url('./images/webback.jpg');
	background-size: cover;
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

<-----Footer CSS------->

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

<--------Body-------->
/* styles.css */

/* Reset default form styles */
form {
    margin: 0;
    padding: 0;
}

/* Style form container */
.container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Style form fields */
.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 8px;
}

input[type="text"],
input[type="email"],
input[type="tel"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 14px;
}

/* Style submit button */
button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 4px;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
    display: block; /* Center the button horizontally */
    margin: 0 auto;
}

/* Additional styling (optional) */
/* Feel free to add more styles as needed */


</style>
</style>

<script>
function validateForm() {
    var nameField = document.forms["refundForm"]["name"].value;
    var emailField = document.forms["refundForm"]["email"].value;
    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    var namePattern = /^[a-zA-Z]+$/; // Regex pattern to allow only alphabetic characters

    if (nameField.trim() == "") {
        alert("Please enter your name.");
        return false; // Prevent form submission
    }

    if (!namePattern.test(nameField.trim())) {
        alert("Name should contain only alphabetic characters.");
        return false; // Prevent form submission
    }

    if (emailField.trim() == "" || !emailPattern.test(emailField.trim())) {
        alert("Please enter a valid email address.");
        return false; // Prevent form submission
    }

    return true; // Proceed with form submission
}
</script>

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
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <c:if test="${user != null}">
                <form action="update" method="post" name="refundForm" onsubmit="return validateForm()">
            </c:if>
            <c:if test="${user == null}">
                <form action="insert" method="post" name="refundForm" onsubmit="return validateForm()">
            </c:if>

            <caption>
                <h2>
                    <c:if test="${user != null}">
                        Edit User
                    </c:if>
                    <c:if test="${user == null}">
                        Add Refund Request
                    </c:if>
                </h2>
            </caption>

            <c:if test="${user != null}">
                <input type="hidden" name="transactionId" value="<c:out value='${user.transactionId}' />" />
            </c:if>

            <fieldset class="form-group">
                <label>User Name</label>
                <input type="text" value="<c:out value='${user.name}' />" class="form-control" name="name" required="required">
            </fieldset>

            <fieldset class="form-group">
                <label>User Email</label>
                <input type="email" value="<c:out value='${user.email}' />" class="form-control" name="email" required="required">
                <!-- Use type="email" for email input and add "required" attribute for HTML5 validation -->
            </fieldset>

            <fieldset class="form-group">
                <label>User Reason</label>
                <input type="text" value="<c:out value='${user.reason}' />" class="form-control" name="reason">
            </fieldset>

            <button type="submit" class="btn btn-success">Submit</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>

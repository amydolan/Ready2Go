<%-- 
    Document   : login
    Created on : 06-Feb-2021, 14:25:43
    Author     : amydolan
--%>

 <%-- I used the following Github resource and Youtube video in developing this page
  https://github.com/Ashish-Bhagat/Login-Page-Project
  https://www.youtube.com/watch?v=pVkaeCaNoq8 
 
 I also used a Bootstrap resource to design this page
https://bbbootstrap.com/snippets/login-form-information-text-67856111
https://getbootstrap.com/docs/4.0/utilities/spacing/ --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style>
        body {
    color: #000;
    overflow-x: hidden;
    height: 100%;
    background-image: linear-gradient(to right, #042b53, #05386B);
    background-repeat: no-repeat
}

input,
textarea {
    background-color: #EDF5E1;
    border-radius: 50px !important;
    padding: 12px 15px 12px 15px !important;
    width: 100%;
    box-sizing: border-box;
    border: none !important;
    border: 1px solid #05386B !important;
    font-size: 16px !important;
    color: #000 !important;
    font-weight: 400
}

input:focus,
textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #05386B !important;
    outline-width: 0;
    font-weight: 400
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0
}

.card {
    border-radius: 0;
    border: none
}

.card1 {
    width: 50%;
    padding: 40px 30px 10px 30px
}

.card2 {
    width: 50%;
    background-image: linear-gradient(to right, #5CDB95, #47d687)
}

#logo {
    width: 260px;
    height: 130px
}

.heading {
    margin-bottom: 60px !important
}

::placeholder {
    color: #000 !important;
    opacity: 1
}

:-ms-input-placeholder {
    color: #000 !important
}

::-ms-input-placeholder {
    color: #000 !important
}

.form-control-label {
    font-size: 12px;
    margin-left: 15px
}

.msg-info {
    padding-left: 15px;
    margin-bottom: 30px
}

.btn-color {
    border-radius: 50px;
    color: #fff;
    background-image: linear-gradient(to right, #5CDB95, #47d687);
    padding: 15px;
    cursor: pointer;
    border: none !important;
    margin-top: 40px
}

.btn-color:hover {
    color: #fff;
    background-image: linear-gradient(to right, #EDF5E1, #5CDB95)
}

.btn-white {
    border-radius: 50px;
    color: #D500F9;
    background-color: #fff;
    padding: 8px 40px;
    cursor: pointer;
    border: 2px solid #EDF5E1 !important
}

.btn-white:hover {
    color: #fff;
    background-image: linear-gradient(to right, #5CDB95, #EDF5E1)
}

a {
    color: #000
}

a:hover {
    color: #000
}

.bottom {
    width: 100%;
    margin-top: 50px !important
}

.sm-text {
    font-size: 15px
}

@media screen and (max-width: 992px) {
    .card1 {
        width: 100%;
        padding: 40px 30px 10px 30px
    }

    .card2 {
        width: 100%
    }

    .right {
        margin-top: 100px !important;
        margin-bottom: 100px !important
    }
}

@media screen and (max-width: 768px) {
    .container {
        padding: 10px !important
    }

    .card2 {
        padding: 50px
    }

    .right {
        margin-top: 50px !important;
        margin-bottom: 50px !important
    }
}
    </style>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>New Start & Resource Management Application Login</title>
    <link rel="stylesheet" href="../FYP3/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../FYP3/static/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="../FYP3/static/fonts/ionicons.min.css">
    <link rel="stylesheet" href="../FYP3/static/css/styles.min.css">
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body style="background: rgb(5, 56, 107);">

<div class="container px-4 py-5 mx-auto">
    <div class="card card0">
        <div class="d-flex flex-lg-row flex-column-reverse">
            <div class="card card1">
                <div class="row justify-content-center my-auto">
                    <div class="col-md-8 col-10 my-5">
                        <div class="row justify-content-center px-3 mb-3"> <img id="logo" src="https://www.seek.com.au/employer/hiring-advice/assets/customfields/4013/63/2019.359_HIR_New-Employee-Checklist_940x352.jpg"> </div>
                        <h3 class="mb-5 text-center heading">Recruit & Resource Management</h3>
                        <h6 class="msg-info">Please login to your account</h6>
                         <form action ="login" method="post">
                        <div class="form-group"> <label class="form-control-label text-muted">Username</label> <input type="text" name="username" placeholder="johndoe1" class="form-control"> </div>
                 
                        <div class="form-group"> <label class="form-control-label text-muted">Password</label> <input type="password" name="password" placeholder="********" class="form-control"> </div>
                        <div class="row justify-content-center my-3 px-3"> <button class="btn-block btn-color" type="submit" value="Submit">Login</button> </div>
                        <div class="row justify-content-center my-2"> <a href="#"><small class="text-muted">Forgot Password?</small></a> </div>
                         </form>
                    </div>
                </div>
              
            </div>
            <div class="card card2">
                <div class="my-auto mx-md-5 px-md-5 right">
                    <h3 class="text-white">We are more than just a company</h3> 
                    <br>
                    <small class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</small>
                </div>
            </div>
        </div>
    </div>
</div>
    
                        <!-- Footer -->
<footer class="bg-dark text-center text-white fixed-bottom">
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgb(5, 56, 107);">
    © 2021 Copyright:
    <a class="text-white" href="https://www.linkedin.com/in/amy-dolan/">Amy Dolan</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->
</body>
</html>
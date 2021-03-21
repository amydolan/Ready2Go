<%-- 
    Document   : userRegistration
    Created on : 06-Feb-2021, 17:27:30
    Author     : amydolan
--%>

 <%--  I used the following Github resource and Youtube video in developing this page
  https://github.com/Ashish-Bhagat/Registration-Page-Project
  https://www.youtube.com/watch?v=TJXTfF55QDE&t=2056s
 
  I used the following Bootstrap resources to develop this page
 https://getbootstrap.com/docs/4.0/utilities/spacing/ 
 https://getbootstrap.com/docs/4.0/components/navbar/ 
 
 I used this W3Schools resource to develop this page
 https://www.w3schools.com/js/js_popup.asp
 --%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>New Start & Resource Management Application</title>
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body style="background: rgb(241,247,252);">
    
    <!-- Start: Navigation with Button -->
    <nav class="navbar navbar-dark navbar-expand-lg navigation-clean-button" style="background-color: #05386B;">
        <div class="container">
            <a class="navbar-brand" href="#">Recruit &amp; Resource Management</a>
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navcol-1" aria-controls="navcol-1" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
             </button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav mr-auto">
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/list">Recruits</a></li>
                    <li class="nav-item"><a class="nav-link" href="../FYP6/dashboard.jsp">Dashboard</a></li>
                    <li class="nav-item"><a class="nav-link active" href="../FYP6/userRegistration.jsp">Add New Admin</a></li>
                    <li class="nav-item"><a class="nav-link" href="../FYP6/linemanager.jsp">My Team</a></li>
                </ul><span class="navbar-text actions"> <button onclick="window.location.href='../FYP6/login.jsp';"class="btn btn-primary" type="button" style="background: rgb(92,219,149);border-style: none;">Log Out</button></span>
            </div>
        </div>
    </nav><!-- End: Navigation with Button -->
                    <br>    
                    
                <div class="container col-md-3 py-3">
		<div class="card">
                <div class="card-body">
                    
<form action="Register" method="post">  
    <h2>Add a New User</h2>
    <br>
                                <fieldset class="form-group">
					<label>Username: </label> <input type="text"
					class="form-control"
					name="username" required="required">
				</fieldset>
                                                
                                <fieldset class="form-group">
					<label>Password: </label> <input type="password"
					class="form-control" 
					name="password" required="required">
				</fieldset>                

				<fieldset class="form-group">
					<label>Email: </label> <input type="email"
					class="form-control"
					name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Job Title: </label> <input type="text"
					class="form-control"
					name="jobtitle">
				</fieldset>
    
    <centre><input onclick="myFunction()" type="submit" value="Register User" class="btn btn-success" style="background: rgb(92,219,149);border-style: none;"></centre>
</form>                     
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
                    
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<script>
function myFunction() {
  alert("Your new user has been successfully created.");
}
</script>
</body>
</html>
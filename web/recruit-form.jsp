<%-- 
    Document   : recruit-form
    Created on : 25-Nov-2020, 19:20:16
    Author     : amydolan
--%>

 <%-- I used the following Github resource and Youtube video in developing this page
  https://github.com/Ashish-Bhagat/userManagementApplication
  https://www.youtube.com/watch?v=-3m2_wHWXf4&t=3416s 
 
 I used the following resources from W3Schools to develop this page
 https://www.w3schools.com/tags/tag_datalist.asp
 
 I used the following Bootstrap resources to develop this page
 https://getbootstrap.com/docs/4.0/utilities/spacing/ 
 https://getbootstrap.com/docs/4.0/components/navbar/ --%>
 

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <style>
   .footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: white;
   color: black;
   text-align: center;
   border-top: 5px solid orange;
    </style>
<meta charset="utf-8">
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
                    <li class="nav-item"><a class="nav-link active" href="<%=request.getContextPath()%>/list">Recruits</a></li>
                    <li class="nav-item"><a class="nav-link" href="../FYP6/dashboard.jsp">Dashboard</a></li>
                    <li class="nav-item"><a class="nav-link" href="../FYP6/userRegistration.jsp">Add New Admin</a></li>
                     <li class="nav-item"><a class="nav-link" href="../FYP6/linemanager.jsp">My Team</a></li>
                </ul><span class="navbar-text actions"> <button onclick="window.location.href='../FYP6/login.jsp';"class="btn btn-primary" type="button" style="background: rgb(92,219,149);border-style: none;">Log Out</button></span>
            </div>
        </div>
    </nav><!-- End: Navigation with Button -->
	
	<div class="container col-md-4 pt-3">
		<div class="card">
			<div class="card-body">
				<c:if test="${recruit != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${recruit == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${recruit != null}">
            			Edit New Start
            		</c:if>
						<c:if test="${recruit == null}">
            			Add New Start
            		</c:if>
					</h2>
				</caption>

				<c:if test="${recruit != null}">
					<input type="hidden" name="id" value="<c:out value='${recruit.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>New Employee Name</label> <input type="text"
						value="<c:out value='${recruit.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>
                                                
                                <fieldset class="form-group">
					<label>Expected Start Date</label> <input type="date"
						value="<c:out value='${recruit.startdate}' />" class="form-control"
						name="startdate">
				</fieldset>                

				<fieldset class="form-group">
					<label>New Employee Email</label> <input type="text"
						value="<c:out value='${recruit.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>New Employee Role</label> <input type="text"
						value="<c:out value='${recruit.role}' />" class="form-control"
						name="role">
				</fieldset>
                                                
                                <fieldset class="form-group">
					<label>New Employee Address</label> <input type="text"
						value="<c:out value='${recruit.address}' />" class="form-control"
						name="address">
				</fieldset> 
                                                
                                <fieldset class="form-group">
					<label for="manager">Manager of New Employee</label> <input list="managers" name="manager" id="manager"
						value="<c:out value='${recruit.manager}' />" class="form-control">
                                                <datalist id="managers">
                                                <option value="Martin Murphy">
                                                <option value="Lucy Nagle">
                                                <option value="Maria O'Shea">
                                                <option value="Susan Holland">
                                                <option value="Derek Collins">
                                              </datalist>
						
				</fieldset>
                                                
                                <fieldset class="form-group">
					<label>Requirements for New Employee</label> <input type="text"
						value="<c:out value='${recruit.requirements}' />" class="form-control"
						name="requirements">
				</fieldset> 
                                                
                                <fieldset class="form-group">
					<label>Comments or Updates</label> <input type="text"
						value="<c:out value='${recruit.updates}' />" class="form-control"
						name="updates">
				</fieldset>                 

                                                <centre><button type="submit" class="btn btn-success" style="background: rgb(92,219,149);border-style: none;">Save</button></centre>
				</form>
			</div>
		</div>
	</div>
                                                
                                                <br>
                                                <br>
                                                <br>
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
</body>
</html>

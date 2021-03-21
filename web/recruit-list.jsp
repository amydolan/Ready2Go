<%-- 
    Document   : recruit-list
    Created on : 25-Nov-2020, 19:33:06
    Author     : amydolan
--%>

 <%-- I used the following Github resource and Youtube video in developing this page
  https://github.com/Ashish-Bhagat/userManagementApplication
  https://www.youtube.com/watch?v=-3m2_wHWXf4&t=3416s 
 
  I used the following Bootstrap resources to develop this page
 https://getbootstrap.com/docs/4.0/utilities/spacing/ 
 https://getbootstrap.com/docs/4.0/components/navbar/
 
 I used the following resources from W3Schools to develop this page
 https://www.w3schools.com/howto/howto_js_sort_table.asp
 https://www.w3schools.com/howto/howto_js_filter_table.asp
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #CEF4DF;
}

</style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>New Start & Resource Management Application</title>
    
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

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
    
    <div class="container" style="width: 800px;padding: 10px;">
        <h1 style="text-align: center;">List of New Employees</h1>
        <a href="<%=request.getContextPath()%>/new" class="btn btn-primary center-align" role="button" style="background: rgb(92,219,149);border-style: none;">Add New Employee</a>
    </div>
	
	<br>
        


	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
			<br>
			<table id="myTable">
				<thead bgcolor= #5CDB95>
					<tr>
                                            <!--When a header is clicked, run the sortTable function, with a parameter, 0 for sorting by names, 1 for sorting by country:-->  
						<th onclick="sortTable(0)">ID</th>
						<th onclick="sortTable(1)">Name</th>
                                                <th onclick="sortTable(2)">Start Date</th>						
                                                <th onclick="sortTable(3)">Role</th>						
						<th onclick="sortTable(4)">Manager</th>                                                                                               
                                                <th>Action</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="recruit" items="${listRecruit}">

						<tr>
							<td><c:out value="${recruit.id}" /></td>
							<td><c:out value="${recruit.name}" /></td>
                                                        <td><c:out value="${recruit.startdate}"/></td>							
							<td><c:out value="${recruit.role}" /></td>                                                
                                                        <td><c:out value="${recruit.manager}" /></td>                                                    
							<td><a href="edit?id=<c:out value='${recruit.id}' />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; 
                                                            <a href="delete?id=<c:out value='${recruit.id}' />">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
                        <br>
                        <br>
                        <br>
                        
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


<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>

<script>
function sortTable(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("myTable");
  switching = true;
  //Set the sorting direction to ascending:
  dir = "asc"; 
  /*Make a loop that will continue until
  no switching has been done:*/
  while (switching) {
    //start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /*Loop through all table rows (except the
    first, which contains table headers):*/
    for (i = 1; i < (rows.length - 1); i++) {
      //start by saying there should be no switching:
      shouldSwitch = false;
      /*Get the two elements you want to compare,
      one from current row and one from the next:*/
      x = rows[i].getElementsByTagName("TD")[n];
      y = rows[i + 1].getElementsByTagName("TD")[n];
      /*check if the two rows should switch place,
      based on the direction, asc or desc:*/
      if (dir == "asc") {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch= true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          //if so, mark as a switch and break the loop:
          shouldSwitch = true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      /*If a switch has been marked, make the switch
      and mark that a switch has been done:*/
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      //Each time a switch is done, increase this count by 1:
      switchcount ++;      
    } else {
      /*If no switching has been done AND the direction is "asc",
      set the direction to "desc" and run the while loop again.*/
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}
</script>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>

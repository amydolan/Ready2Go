<%-- 
    Document   : linemanager
    Created on : 04-Mar-2021, 10:31:51
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
 
 I used the following Google Charts resources to develop this page
 https://developers.google.com/chart/interactive/docs/gallery/piechart
 https://developers.google.com/chart/interactive/docs/gallery/geochart
 https://developers.google.com/chart/interactive/docs/gallery/calendar
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["calendar", "corechart", "geochart"], 'mapsApiKey': 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'});
      google.charts.setOnLoadCallback(drawChartCal);
      google.charts.setOnLoadCallback(drawChartPie);
      google.charts.setOnLoadCallback(drawRegionsMap);


   function drawChartCal() {
       var dataTable = new google.visualization.DataTable();
       dataTable.addColumn({ type: 'date', id: 'Date' });
       dataTable.addColumn({ type: 'number', id: 'NewStart' });
       dataTable.addRows([
          [ new Date(2020, 10, 5), 5 ],
          [ new Date(2020, 10, 9), 1 ],
          [ new Date(2020, 10, 12), 1 ],
          [ new Date(2020, 10, 16), 2 ],
          [ new Date(2020, 11, 2), 1 ], 
          [ new Date(2020, 11, 3), 5 ],
          [ new Date(2020, 11, 10), 1 ],
          [ new Date(2020, 11, 11), 1 ],
          [ new Date(2020, 11, 17), 2 ],
          [ new Date(2020, 11, 2), 1 ],
          [ new Date(2021, 0, 5), 5 ],
          [ new Date(2021, 0, 7), 1 ],
          [ new Date(2021, 0, 13), 1 ],
          [ new Date(2021, 0, 11), 2 ],
          [ new Date(2021, 0, 19), 1 ],
          [ new Date(2021, 1, 16), 4 ],
          [ new Date(2021, 1, 22), 2 ],
          [ new Date(2021, 1, 25), 4 ],
          [ new Date(2021, 2, 8), 3 ],
          [ new Date(2021, 2, 18), 1 ],
          [ new Date(2021, 2, 19), 1 ],
          [ new Date(2021, 2, 29), 2 ],
          [ new Date(2021, 2, 30), 1 ],
          [ new Date(2021, 2, 31), 1 ],
          [ new Date(2021, 3, 1), 2 ],
          [ new Date(2021, 3, 5), 4 ],
          [ new Date(2021, 3, 9), 3 ],
          [ new Date(2021, 3, 12), 2 ]
        ]);

       var chart = new google.visualization.Calendar(document.getElementById('calendar_basic'));

       var options = {
         title: "Onboarding Numbers",
         height: 350
       };

       chart.draw(dataTable, options);
   }
   
    function drawChartPie() {
        var data = google.visualization.arrayToDataTable([
          ['Resource', 'Number on Loan'],
          ['Laptops',     207],
          ['Monitors',      120],
          ['Desks',  74],
          ['Chairs', 65],
          ['Keyboards',    16]
        ]);

        var options = {
          title: 'Resources Currently Loaned',
          pieHole: 0.4
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
      
      function drawRegionsMap() {
        var data = google.visualization.arrayToDataTable([
          ['Country', 'Number of Employees'],
          ['Germany', 24],
          ['GB', 8],
          ['Italy', 3],
          ['Sweden', 7],
          ['France', 32],
          ['Ireland', 158]
        ]);

        var options = {
            title: 'Employee WFH Locations',
            region: '150',
          colorAxis: {colors: ['#baffd9' , '#05386B']},
          backgroundColor: '#81d4fa',
          datalessRegionColor: '#f5fff9',
          defaultColor: '#f5f5f5'
        };

        var chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

        chart.draw(data, options);
      }
    </script>
    
    <style>
div {text-align: center;}

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

.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: white;
   color: black;
   text-align: center;
   border-top: 5px solid orange;
}

</style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>New Start & Resource Management Application</title>
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/list">Recruits</a></li>
                    <li class="nav-item"><a class="nav-link active" href="../FYP6/dashboard.jsp">Dashboard</a></li>
                    <li class="nav-item"><a class="nav-link" href="../FYP6/userRegistration.jsp">Add New Admin</a></li>
                     <li class="nav-item"><a class="nav-link" href="../FYP6/linemanager.jsp">My Team</a></li>
                </ul><span class="navbar-text actions"> <button onclick="window.location.href='../FYP6/login.jsp';"class="btn btn-primary" type="button" style="background: rgb(92,219,149);border-style: none;">Log Out</button></span>
            </div>
        </div>
    </nav><!-- End: Navigation with Button -->
    <br>

    <table class="columns">
        <tr>
            <td><div id="donutchart" style="border: 1px solid #ccc; width: 716px; height: 500px;"></div></td>
            <td><div id="regions_div" style="border: 1px solid #ccc; width: 716px; height: 500px;"></div></td>
        </tr>
    </table>
    <br>
    <br>
    <div id="calendar_basic" style="width: 1000px; height: 350px;"></div>

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
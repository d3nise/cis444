<!-- 
     http://cis444.cs.csusm.edu/nguye208/cis444/HW/HW6/Homework6.html
     DENISE THUY VY NGUYEN ß
     CIS 444 WU - Homework 6
     Homework6.php
-->
<html>
<head>
<title> CIS 444 Homework 6 - PHP script to access teams Database </title>
<link rel = "stylesheet" type = "text/css" href = "pinkTable.css" />
</head>
<body>
<div class="body_container">
    <div class="main_body">     
          <h1> NFL Teams </h1>
          <p class="lft">
               Please enter a Team ID to search for:
               <br />
               <form action = "Homework6.php" method = "post">
                    <input type = "text" name = "teamIDQuery" size = "20"></input>
                    <br /> <br />
                    <input type = "submit" value = "Submit ID"/>
                    <input type = "reset" value = "Reset"/>
               </form>
               
</div>

<div style="overflow-x:auto;">
<?php

// Connect to MySQL
$db = mysqli_connect("localhost", "nguye208", "091292");

// Test to see if connection to MySQl was successful
if(!$db){
     print "Error - Unable to connect to MySQL.";
     exit;
}

// Select  database
$kitty = mysqli_select_db($db, "nguye208");

// Test if successful
if(!$kitty){
     print "Error - Unable to select the nguye208 database.";
     exit;
}

// Get the teamID entered by the user to use for WHERE clause
$teamIDQuery = $_POST['teamIDQuery'];

// Clean up
$teamIDQuery = stripcslashes($teamIDQuery);

// Display the WHERE clause
$teamID_html = htmlspecialchars($teamIDQuery);

// Store query
$query = "SELECT * FROM TEAM WHERE teamID = '$teamID_html'";

// Execute query
$result = mysqli_query($db, $query);

// Display query error if applicable
if(!$result){
     print "Error - The query could not be executed.";
     $error = mysql_error();
     print "<p>" . $error . "</p>";
     exit;
}

// Display the results in a table
print "<table> <caption> <h3> NFL Team Information </h3>";
print" <h4> Team ID Entered: " . $teamID_html . "</h4></caption>";
print "<tr align = 'center'>";

// Get the number of rows in the result
$num_rows = mysqli_num_rows($result);

// If there are rows in the result, put them in an HTML table
if($num_rows > 0){
     // Get the first row of the result
     $firstRow = mysqli_fetch_assoc($result);

     // Get the number of fields in the result
     $num_fields = mysqli_num_fields($result);

     // Get the column names
     $keys = array_keys($firstRow);

     // Display column names as appropriate column headers
     for($index = 0; $index < $num_fields; $index++){
          print "<th>" . $keys[$index] . "</th>";
     }

     // End table row for column headers
     print "</tr>";

     // Display the values of each field in the row
     for($row_num = 0; $row_num < $num_rows; $row_num++){
          print "<tr>";
          $values = array_values($firstRow);

          for($i = 0; $i < $num_fields; $i++){
               $value = htmlspecialchars($values[$i]);
               print "<td>" . $value . "</td>";
          }

          // End table row
          print "</tr>";

          // Get the next row
          $firstRow = mysqli_fetch_assoc($result);
     }
}
else{
     print "There was no such row in the teams table. <br />";
}

// Close table
print "</table>";


?>
</div>
      </div>
</div>
</body>
</html>

<?php
include("connection.php");
?>
<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" type="text/css" href="projectstyles.css" />
</head>
<body>
    <div id="form">
        <h1>Login Form</h1>
        <form name="form" action="loginform.php" method="POST"> 
        
         <label >   Email:</label>
         <input type="email" id="emaill" name="emaill" required> <br><br>
         <label > Password:</label>
         <input type="password" id="password" name="password" required> <br><br>
         <button type="submit2" name="submit2">Log In</button>>
        </form>
    </div>
</body>
</html>
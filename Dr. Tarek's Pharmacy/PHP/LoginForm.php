<?php
include("connection.php");
?>
<!DOCTYPE html>
<html>
<head>
    <title>Login Form</title>
<link rel="stylesheet" href="/Dr. Tarek's Pharmacy/CSS/style.css">
<link rel="stylesheet" type="text/css" href="projectstyles.css" />
</head>
<body>
    <div id="form">
        <h1>Login Form</h1>
        <form name="form" action="Login.php" method="POST"> 
            <label >Email:</label>
            <input type="email" id="emaill" name="emaill" required> <br><br>
            <label >Password:</label>
            <input type="password" id="password" name="password" required>
            <select name="type">
              <option value="p">Pharmacist</option>
              <option value="c">Customer</option>
            </select> 
            <br><br>
            <button type="submit2" name="submit2">Log In</button>
        </form>
    </div>
</body>
</html>
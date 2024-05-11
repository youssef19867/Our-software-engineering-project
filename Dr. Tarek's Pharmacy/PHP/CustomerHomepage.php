<?php
    session_start();
    require "connection.php";
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="/Dr. Tarek's Pharmacy/CSS/Homepage.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Pharmacy Management System</title>
        <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">-->
    </head>
    <body>
        <header>
            <div class="About">
                <h1>Dr. Tarek's Pharmacy</h1>
            </div>
        </header>
        <nav>
            <ul>
                <li><a href="CustomerHomepage.php"><i class="fas fa-home"></i>Home</a></li>
                <li><a href="#"><i class="fas fa-products"></i>Products</a></li>
                <li><a href="#"><i class="fas fa-cart"></i>Cart</a></li>
                <li><a href="LoginForm.php"><i class="fas fa-logout"></i>Logout</a></li>
            </ul>
        </nav>
        <h4>
            Welcome, 
            <?php
                //echo ($_SESSION["fname"] . $_SESSION["minitial"] . $_SESSION["lname"]);
            ?>
        </h4>
        <main>
            <section class="dashboard">
                <h2><i class="fas fa-tachometer-alt"></i> Dashboard</h2>
            </section>
        </main>
        <footer>
            <p>&copy; 2024 Pharmacy Management System</p>
        </footer>
        <table>
            <tr> <th><a href="#">Offers</a></th><th><a href="#">Prescribed Medicines</a></th><th><a href="#">Schedule Test</a></th> </tr>
            <tr> <td style="text-align: center;"><img src="/Dr. Tarek's Pharmacy/Images/offers.png" alt="Offers"></td> <td style="text-align: center;"><img src="/Dr. Tarek's Pharmacy/Images/prescribed-medicines.png" alt="Prescribed Medicines"></td> <td style="text-align: center;"><img src="/Dr. Tarek's Pharmacy/Images/schedule-test.png" alt="Schedule Test"></td> </tr>
            <tr> <th><a href="#">Locations</a></th> <th><a href="#">Contact Methods</a></th> </tr>
            <tr> <td style="text-align: center;"><img src="/Dr. Tarek's Pharmacy/Images/location.png" alt="Location"></td> <td style="text-align: center;"><img src="/Dr. Tarek's Pharmacy/Images/contact-methods.png" alt="Contact Methods"></td> </tr>
        </table>
    </body>
</html>
<?php
// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$database = "productlist";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if data is received via POST method
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Data received from AJAX request
    $productId = isset($_POST['productId']) ? $_POST['productId'] : '';
    $name = isset($_POST['name']) ? $_POST['name'] : '';
    $price = isset($_POST['price']) ? $_POST['price'] : '';
    $quantity = isset($_POST['quantity']) ? $_POST['quantity'] : '';
    $expiry = isset($_POST['expiry']) ? $_POST['expiry'] : '';

    // Prepare and execute update statement
    $stmt = $conn->prepare("UPDATE pinfo SET pname=?, price=?, quantity=?, expiry=? WHERE id=?");
    $stmt->bind_param("ssssi", $name, $price, $quantity, $expiry, $productId);
    if ($stmt->execute())
    
    {
        echo '<script>
        alert("Record updated successfully.");
        window.location.replace("productlist.php");
    </script>';
    } 
    
    else {
        echo '<script>
        alert("Record unsuccessfull.");
        window.location.replace("productlist.php");
    </script>';
    }

    // Close statement
    $stmt->close();
} else {
    // Invalid request method
    echo "Invalid request method";
}

// Close connection
$conn->close();
?>

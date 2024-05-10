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
    // Data received from form POST
    $pname = $_POST['productName'];
    $price = $_POST['productPrice'];
    $quantity = $_POST['productQuantity'];
    $expiry = $_POST['Expirydate'];

    // Prepare SQL statement
    $stmt = $conn->prepare("INSERT INTO pinfo(`pname`, `quantity`, `price`, `expiry`) VALUES (?, ?, ?, ?)");
    if (!$stmt) {
        die("Error in prepare: " . $conn->error);
    }

    // Bind parameters
    $stmt->bind_param("sdss", $pname, $quantity, $price, $expiry);

    // Execute SQL statement
    if ($stmt->execute()) {
        header('Location: ' . $_SERVER['HTTP_REFERER']);

        exit();
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close statement
    $stmt->close();
} else {
    echo "Invalid request method";
}

// Close connection
$conn->close();
?>

<?php
// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$database = "dr. tarek's pharmacy";

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

    // Prepare and execute delete statement
    $stmt = $conn->prepare("DELETE FROM products WHERE Product_ID =?");
    $stmt->bind_param("i", $productId);
    if ($stmt->execute()) {
        // Send success response
        http_response_code(200); // Set HTTP response code to 200 (OK)
        echo "Product deleted successfully";
    } else {
        // Send error response
        http_response_code(500); // Set HTTP response code to 500 (Internal Server Error)
        echo "Error deleting product: " . $stmt->error;
    }

    // Close statement
    $stmt->close();
} else {
    // Invalid request method
    http_response_code(400); // Set HTTP response code to 400 (Bad Request)
    echo "Invalid request method";
}

// Close connection
$conn->close();
?>

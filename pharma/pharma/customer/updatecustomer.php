<?php
// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$database = "pharmacy";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if data is received via POST method
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Retrieve JSON data from POST request body
    $json_data = file_get_contents("php://input");
    
    // Decode JSON data into associative array
    $data = json_decode($json_data, true);

    // Extract individual fields from the data
    $customerId = $data['CustomerId'];
    $new_name = $data['new_name'];
    $new_address = $data['new_address'];
    $new_contact = $data['new_contact'];

    // Validate input data (optional but recommended)
    if (empty($customerId) || empty($new_name) || empty($new_address) || empty($new_contact)) {
        echo "Error: Please fill in all fields.";
        exit;
    }

    // Prepare and execute update statement
    $stmt = $conn->prepare("UPDATE customers SET FullName=?, Address=?, Contact=? WHERE CustomerID=?");
    if (!$stmt) {
        echo "Error preparing statement: " . $conn->error;
        exit;
    }

    $stmt->bind_param("sssi", $new_name, $new_address, $new_contact, $customerId);
    if ($stmt->execute()) {
        echo "success"; // Return success message
    } else {
        echo "Error updating customer data: " . $stmt->error; // Return error message
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

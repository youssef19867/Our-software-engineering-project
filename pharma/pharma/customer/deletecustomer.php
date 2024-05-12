<?php
// Enable error reporting
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["CustomerId"])) {
    // Database connection parameters
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "pharmacy";
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Retrieve and sanitize customer ID
    $customerId = mysqli_real_escape_string($conn, $_POST["CustomerId"]);

    // Prepare and bind SQL statement for deletion
    $sql = "DELETE FROM customers WHERE CustomerId = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $customerId);

    // Execute SQL statement
    if ($stmt->execute()) {
        
        // Check if any rows were affected (indicating successful deletion)
        if ($stmt->affected_rows > 0) {
            echo "Customer with ID $customerId deleted successfully";
        } else {
            echo "No customer found with ID $customerId";
        }
    } else {
        echo "Error deleting customer: " . $stmt->error;
    }

    // Close statement
    $stmt->close();

    // Close the database connection
    $conn->close();
} else {
    echo "Error: Customer ID not provided or invalid request";
}
?>

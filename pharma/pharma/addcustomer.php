<?php
// Enable error reporting
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
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

    // Retrieve form data and sanitize it
    $fullName = mysqli_real_escape_string($conn, $_POST["name"]);
    $address = mysqli_real_escape_string($conn, $_POST["address"]);
    $contact = mysqli_real_escape_string($conn, $_POST["contact"]);
    $productName = mysqli_real_escape_string($conn, $_POST["prod_name"]);
    $total = mysqli_real_escape_string($conn, $_POST["memno"]);
    $note = mysqli_real_escape_string($conn, $_POST["note"]);
    $expectedDate = mysqli_real_escape_string($conn, $_POST["date"]);

    // Echo SQL query for debugging

    // Prepare and bind SQL statement
    $sql = "INSERT INTO Customers (FullName, Address, Contact, ProductName, Total, Note, ExpectedDate) VALUES (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sssssss", $fullName, $address, $contact, $productName, $total, $note, $expectedDate);

    // Execute SQL statement
    if ($stmt->execute()) {
        $customerId = $conn->insert_id; // Get the ID of the inserted record
        echo "New record created successfully. Customer ID: " . $customerId;
        
        
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Close statement
    $stmt->close();

    // Close the database connection
    $conn->close();
}
?>

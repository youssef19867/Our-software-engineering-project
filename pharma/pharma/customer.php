<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pharmacy Management System</title>
    <link rel="stylesheet" href="customer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="customer.js"></script>

</head>
<body>
    <header>
        <div class="About">
            <h1>DR.Tarek's Pharmacy</h1>
        </div>
    </header>
    <nav>
        <ul>
            <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
            <li><a href="#"><i class="fas fa-capsules"></i> Products</a></li>
            <li><a href="#"><i class="fas fa-chart-bar"></i> Cart</a></li>
            <li><a href="#"><i class="fas fa-sign-in-alt"></i> Login/SignUp</a></li>
        </ul>
    </nav>
    <div id="ac">
        <!-- Your existing search form -->
        <div class="search">
            <form method="get" action="readcustomer.php" class="search-form">
                <input type="text" name="id" class="form-control" placeholder="Enter Customer ID" required>
                <button class="btn btn-primary" type="submit">
                    <i class="fas fa-search"></i> Search
                </button>
            </form>
        </div>
        
        <!-- Button to toggle add customer form visibility -->
        <button id="addCustomerBtn">Add Customer</button>
        
        <!-- Form for adding customer (initially hidden) -->
        <div id="addCustomerForm" style="display: none;">
            <form method="post" action="addcustomer.php">
                <!-- Input fields for adding customer -->
                <span>Full Name : </span><input type="text" name="name" placeholder="Full Name" required/><br>
                <span>Address : </span><input type="text" name="address" placeholder="Address"/><br>
                <span>Contact : </span><input type="text" name="contact" placeholder="Contact"/><br>
                <span>Product Name : </span><textarea name="prod_name"></textarea><br>
                <span>Total: </span><input type="text" name="memno" placeholder="Total"/><br>
                <span>Note : </span><textarea name="note"></textarea><br>
                <span>Expected Date: </span><input type="date" name="date" placeholder="Date"/><br>
                <button class="btn btn-success btn-block btn-large" type="submit"><i class="fas fa-save"></i> Save</button>
            </form>
        </div>
        
        <!-- Table to display product details -->
        
            <?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "pharmacy";

// Step 1: Connect to the database
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

// Step 2: Execute SQL query to fetch name, address, and contact
$sql = "SELECT CustomerId, FullName, Address, Contact FROM customers"; // Replace 'customers' with your actual table name
//echo "SQL query: $sql<br>";
$result = mysqli_query($conn, $sql);

// Step 3: Fetch and display data
if ($result) {
    if (mysqli_num_rows($result) > 0) {
        echo "<table id='customerTable'>"; // Start HTML table with ID 'customerTable'
        echo "<thead><tr><th>ID</th><th>Name</th><th>Address</th><th>Contact</th><th>Action</th></tr></thead><tbody>";
        while ($row = mysqli_fetch_assoc($result)) {
            // Display CustomerId, FullName, Address, and Contact in the appropriate sections
            echo "<tr>";
            echo "<td>" . $row["CustomerId"] . "</td>"; // Display CustomerId
            echo "<td>" . $row["FullName"] . "</td>";
            echo "<td>" . $row["Address"] . "</td>";
            echo "<td>" . $row["Contact"] . "</td>";
            // Add update and delete buttons with appropriate classes
            echo "<td>
            <button class='update' onclick='editCustomer(this)'>Update</button>
            <button class='delete' onclick='deleteCustomer(this)'>Delete</button>
                  </td>";
            echo "</tr>";
        }
        echo "</tbody></table>"; // End HTML table
    } else {
        echo "No data found";
    }
} else {
    echo "Error executing SQL query: " . mysqli_error($conn);
}



// Step 4: Close the database connection
mysqli_close($conn);
?>

            </tbody>
        </table>
    </div>

  
</body>
</html>

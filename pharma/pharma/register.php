<?php
session_start();

require_once 'connection.php';

// Registration class for handling user registration
class Registration
{
    private $conn;

    public function __construct($conn)
    {
        $this->conn = $conn;
    }

    public function register($firstName, $middleInitial, $lastName, $email, $password, $dob, $repeatPassword)
    {
        // Sanitize input data
        $firstName = $this->conn->real_escape_string($_POST["first-name"]);
        $middleInitial = $this->conn->real_escape_string($_POST["middle-initial"]);
        $lastName = $this->conn->real_escape_string($_POST["last-name"]);
        $email = $this->conn->real_escape_string($_POST["email"]);
        $password = $this->conn->real_escape_string($_POST["password"]);
        $dob = $this->conn->real_escape_string($_POST["dob"]);
        $repeatPassword = $this->conn->real_escape_string($_POST["repeat-password"]);

        // Validate input
        if ($password !== $repeatPassword) {
            echo "Passwords do not match!";
            exit();
        }

        // Check if email already exists
        $sql = "SELECT * FROM login WHERE email='$email'";
        $result = $this->conn->query($sql);
        if ($result->num_rows > 0) {
            echo "Email already exists!";
            exit();
        }

        // Insert user into database
        $sql = "INSERT INTO login (first_name, middle_initial, last_name, email, password, dob, repeat_password) 
                VALUES ('$firstName', '$middleInitial', '$lastName', '$email', '$password', '$dob', '$repeatPassword')";

        if ($this->conn->query($sql) === TRUE) {
            return true;
        } else {
            return false;
        }
    }
}

// Create Registration object
$registration = new Registration($conn);

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST['submit'])) {
    // Call register method
    if ($registration->register($_POST['first-name'], $_POST['middle-initial'], $_POST['last-name'], $_POST['email'], $_POST['password'], $_POST['dob'], $_POST['repeat-password'])) {
        echo '<script>
            window.location.href="index2.php";
            alert("Registration successful.");
            </script>';
    } else {
        echo '<script>
            alert("Error: Unable to register. Please try again.");
            </script>';
    }
}
?>

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

    public function register($firstName, $middleName, $lastName, $email, $password, $dob, $repeatPassword, $type)
    {
        // Sanitize input data
        $firstName = $this->conn->real_escape_string($_POST["first-name"]);
        $middleName = $this->conn->real_escape_string($_POST["middle-name"]);
        $lastName = $this->conn->real_escape_string($_POST["last-name"]);
        $email = $this->conn->real_escape_string($_POST["email"]);
        $password = $this->conn->real_escape_string($_POST["password"]);
        $dob = $this->conn->real_escape_string($_POST["dob"]);
        $repeatPassword = $this->conn->real_escape_string($_POST["repeat-password"]);
        $type = $this->conn->real_escape_string($_POST["type"]);

        // Validate input
        if ($password !== $repeatPassword) {
            echo "Passwords do not match!";
            exit();
        }

        // Check if email already exists

        // Insert user into database
        if($type=='p')
        {
            $sql = "SELECT * FROM pharmacist WHERE Pharmacist_Email='$email'";
            $result = $this->conn->query($sql);
            if ($result->num_rows > 0) {
                echo "Email already exists!";
                exit();
            }
            $sql = "INSERT INTO pharmacist VALUES ('', '$firstName', '$middleName', '$lastName', '$email', '$password', '$dob')";
        }
        else
        {
            $sql = "SELECT * FROM customers WHERE CustomerEmail='$email'";
            $result = $this->conn->query($sql);
            if ($result->num_rows > 0) {
                echo "Email already exists!";
                exit();
            }
            $sql = "INSERT INTO customers VALUES ('', '$firstName', '$middleName', '$lastName', '$email', '$password', '$dob')";
        }

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
    if ($registration->register($_POST['first-name'], $_POST['middle-name'], $_POST['last-name'], $_POST['email'], $_POST['password'], $_POST['dob'], $_POST['repeat-password'], $_POST['type']))
    {
            if($_POST['type']=='c')
            {
                echo '<script> window.location.replace("CustomerHomepage.php"); </script>';
            }
            else
            {
                echo '<script> window.location.replace("PharmacistHomepage.php"); </script>';
            }
    } 
    else {
        echo '<script>
            alert("Error: Unable to register. Please try again.");
            </script>';
    }
}
?>

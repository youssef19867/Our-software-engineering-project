<?php
session_start();


require_once 'connection.php';

// Authentication class for handling user authentication
class Authentication
{
    private $conn;

    public function __construct($conn)
    {
        $this->conn = $conn;
    }

    public function login($email, $password, $type)
    {
        $email = $this->conn->real_escape_string($email);
        $password = $this->conn->real_escape_string($password);

        if($type == 'c')
        {
            $sql = "SELECT * FROM customers WHERE CustomerEmail='$email' AND CustomerPassword='$password'";
            $result = $this->conn->query($sql);
    
            $row = $result->fetch_assoc();
            if ($result->num_rows > 0) {
                $_SESSION['id'] = $row['CustomerID'];
                $_SESSION['email'] = $email;
                return true;
            } else {
                return false;
            }
        }
        else
        {
            $sql = "SELECT * FROM pharmacist WHERE Pharmacist_Email='$email' AND Pharmacist_Password='$password'";
            $result = $this->conn->query($sql);
    
            $row = $result->fetch_assoc();
            if ($result->num_rows > 0) {
                $_SESSION['id'] = $row['PharmacistID'];
                $_SESSION['email'] = $email;
                return true;
            } else {
                return false;
            }
        }
    }
}


$auth = new Authentication($conn);


if ($_POST) {
   
    if (isset($_POST['submit2'])) {
        
        $email = $_POST['emaill'];
        $password = $_POST['password'];
        $type = $_POST['type'];

        
        if ($auth->login($email, $password, $type)) 
        {
            if($type=='c')
            {
                echo '<script> window.location.replace("CustomerHomePage.php"); </script>';
            }
            else
            {
                echo '<script> window.location.replace("PharmacistHomepage.php"); </script>';
            }
        } 
        else 
        {
            echo '<script>
                window.location.href="index2.php";
                alert("Invalid email or password.");
                </script>';
        }
    }
}
?>

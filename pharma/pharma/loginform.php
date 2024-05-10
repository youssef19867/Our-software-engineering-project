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

    public function login($email, $password)
    {
        $email = $this->conn->real_escape_string($email);
        $password = $this->conn->real_escape_string($password);

        $sql = "SELECT * FROM login WHERE email='$email' AND password='$password'";
        $result = $this->conn->query($sql);

        $row = $result->fetch_assoc();
        if ($result->num_rows > 0) {
            $_SESSION['user_id'] = $row['user_id'];
            $_SESSION['email'] = $email;
            return true;
        } else {
            return false;
        }
    }
}


$auth = new Authentication($conn);


if ($_POST) {
   
    if (isset($_POST['submit2'])) {
        
        $email = $_POST['emaill'];
        $password = $_POST['password'];

        
        if ($auth->login($email, $password)) {
            
            echo '<script>
                window.location.href="home.html";
                alert("Login successful.");
                </script>';
        } else {
           
            echo '<script>
                window.location.href="index2.php";
                alert("Invalid email or password.");
                </script>';
        }
    }
}
?>

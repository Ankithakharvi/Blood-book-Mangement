<?php
session_start();
include("config.php");

if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM login WHERE email='$email' AND password='$password'";
    $result = mysqli_query($con, $sql);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_array($result);
        if ($row['usertype'] == "admin") {
            $_SESSION['admin_id'] = $row['id'];
            $_SESSION['email'] = $row['email'];
            header("location:admin_inbox.php");
        } elseif ($row['usertype'] == "user") {
            $_SESSION['id'] = $row['id'];
            $_SESSION['email'] = $row['email'];
            header("location:Donor_reg.php");
        }
    } else {
        echo "<script>alert('Incorrect email or password');</script>";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <script src="https://kit.fontawesome.com/cdd3068599.js" crossorigin="anonymous"></script>
    <style>
        * {
            margin: 0; padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url(log.jpg);
            background-size: cover;
            background-position: center;
        }
        .container {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            max-width: 450px;
            width: 100%;
        }
        .title {
            font-size: 32px;
            font-weight: 600;
            color: goldenrod;
            text-align: center;
            margin-bottom: 30px;
        }
        .input-group {
            position: relative;
            margin-bottom: 20px;
        }
        .input-group input {
            width: 100%;
            padding: 14px 40px 14px 15px;
            font-size: 16px;
            border: 1px solid goldenrod;
            border-radius: 10px;
            background: transparent;
        }
        .input-group i {
            position: absolute;
            right: 15px;
            top: 14px;
            color: goldenrod;
        }
        .submit-btn {
            width: 100%;
            padding: 14px;
            font-size: 18px;
            font-weight: bold;
            color: white;
            background-color: goldenrod;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s;
        }
        .submit-btn:hover {
            background-color: darkorange;
        }
        .text-link {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }
        .text-link a {
            color: goldenrod;
            text-decoration: none;
        }
        .text-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form action="" method="POST">
        <div class="container">
            <div class="title">Login</div>

            <div class="input-group">
                <input type="email" name="email" placeholder="Enter your email" required autofocus>
                <i class="fas fa-envelope"></i>
            </div>

            <div class="input-group">
                <input type="password" name="password" placeholder="Enter your password" required>
                <i class="fas fa-lock"></i>
            </div>

            <input type="submit" class="submit-btn" name="login" value="Login">

            <div class="text-link">
                Don't have an account? <a href="admin.php">Signup now</a>
            </div>

            <div class="text-link">
                Forgot password? <a href="changepassward.php">Forgot password</a>
            </div>
        </div>
    </form>
</body>
</html>

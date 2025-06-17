<?php
session_start();
include("config.php");

if (isset($_POST['reset'])) {
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $new_password = mysqli_real_escape_string($con, $_POST['new_password']);

    // Check if email exists
    $sql = "SELECT * FROM login WHERE email='$email'";
    $result = mysqli_query($con, $sql);

    if (!$result) {
        // If query fails, display error message
        echo "<script>alert('Database query failed: " . mysqli_error($con) . "');</script>";
    } else {
        if (mysqli_num_rows($result) > 0) {
            // Update password (without hashing)
            $update = "UPDATE login SET password='$new_password' WHERE email='$email'";
            if (mysqli_query($con, $update)) {
                echo "<script>alert('Password reset successful. Please login now.'); window.location='log.php';</script>";
            } else {
                echo "<script>alert('Error updating password. Please try again later.');</script>";
            }
        } else {
            echo "<script>alert('Email not found. Please try again.');</script>";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
    <style>
        body {
            background-color: #f8f8f8;
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
            font-family: "Poppins", sans-serif;
        }
        .container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #cc9900;
            margin-bottom: 20px;
        }
        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border-radius: 8px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            border: none;
            background-color: goldenrod;
            color: white;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: darkorange;
        }
        .back-link {
            text-align: center;
            margin-top: 15px;
        }
        .back-link a {
            color: goldenrod;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Forgot Password</h2>
        <form method="POST">
            <input type="email" name="email" placeholder="Enter your registered email" required>
            <input type="password" name="new_password" placeholder="Enter new password" required>
            <input type="submit" name="reset" value="Reset Password">
        </form>
        <div class="back-link">
            <a href="log.php">Back to Login</a>
        </div>
    </div>
</body>
</html>

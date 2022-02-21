<?php
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm-password'];

    $conn = mysqli_connect('localhost', '6212231004', '1004', '6212231004');
    if(!$conn) die("Connect failed ".mysqli_connect_error());

    if($password != $confirm_password){
        echo "<script>";
        echo "window.location.href='register.php?01'";
        echo "</script>";
    } else{
        $password = md5($password);
        $sql = "INSERT INTO user(name, email, password) VALUES ('$name', '$email', '$password')";

        if(mysqli_query($conn, $sql)){
            echo "<script>";
            echo "window.location.href='../login.php'";
            echo "</script>";
        } else{
            echo "<script>";
            echo "window.location.href='../register.php?02'";
            echo "</script>";
        }
    }
?>
<?php
  session_start();
 $name = $_POST['name'];
 $id = $_SESSION['id'];
 $conn = mysqli_connect('localhost', '6212231004', '1004', '6212231004');
    if(!$conn) die("Connect failed ".mysqli_connect_error());
    $sql = "UPDATE user SET name='$name' WHERE id=$id";
    if(mysqli_query($conn, $sql)){
        echo "<script>";
        echo "window.location.href='../index.php'";
        echo "</script>";
    } else{
        echo "<script>";
        echo "window.location.href='../editprofile.php'";
        echo "</script>";
    
    }

?>
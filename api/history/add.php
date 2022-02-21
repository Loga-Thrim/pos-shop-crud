<?php
    include('../dbconnect.php');

    // $id = json_decode($_POST['data'], true);
    $data = $_POST['data'];
    $id = json_decode($_POST['id'], true);
    $count = json_decode($_POST['count'], true);
    $totalPrice = $_POST['totalPrice'];
    $paid = $_POST['paid'];
    $success = 1;

    for($i = 0; $i < count($id); ++$i){
        $sId = intval($id[$i]);
        $sCount = intval($count[$i]);
        $sql = "UPDATE product SET remain = remain - $sCount WHERE id = $sId";
        if(mysqli_query($dbcon, $sql)){
            $success *= 1;
        } else {
            $success *= 0;
        }
    }

    $t = time();
    $t = date("Y-m-d h:i:s A", $t);
    $sql = "INSERT INTO history (totalPrice, paid, products, time) VALUES ('$totalPrice', '$paid', '$data', '$t')";
    

    if($success && mysqli_query($dbcon, $sql)) echo 'success';
    else echo 'error';
?>
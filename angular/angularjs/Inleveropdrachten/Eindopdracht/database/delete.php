<?php


include 'dbconnect.php';
$data    = json_decode(file_get_contents("php://input"));
if (count($data) > 0) {
    $Id    = $data->Id;
    $query = "DELETE FROM eindopdracht WHERE Id='$Id'";
    if (mysqli_query($conn, $query)) {
        echo 'Data Deleted Successfully...';
    } else {
        echo 'Failed';
    }
}
?>
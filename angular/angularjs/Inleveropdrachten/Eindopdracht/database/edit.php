<?php

include 'dbconnect.php';

$info = json_decode(file_get_contents("php://input"));
if(count($info) > 0) {
	$Voornaam = mysqli_real_escape_string($conn, $info->Voornaam);
	$Achternaam = mysqli_real_escape_string($conn, $info->Achternaam);
    $Straat = mysqli_real_escape_string($conn, $info->Straat);
	$Huisnummer = mysqli_real_escape_string($conn, $info->Huisnummer);
	$Postcode = mysqli_real_escape_string($conn, $info->Postcode);
	$Woonplaats = mysqli_real_escape_string($conn, $info->Woonplaats);
	$Telefoonnummer = mysqli_real_escape_string($conn, $info->Telefoonnummer);
    $btn_name = $info->btnName;
    

if ($btn_name == 'Update') {
    $Id    = $info->Id;
    $query = "UPDATE eindopdracht SET Voornaam= '$Voornaam', Achternaam= '$Achternaam', Straat= '$Straat', Huisnummer= '$Huisnummer', Postcode= '$Postcode', Woonplaats= '$Woonplaats', Telefoonnummer= '$Telefoonnummer' WHERE Id='$Id'";
    if (mysqli_query($conn, $query)) {
        echo 'Data Updated Successfully...';
    } else {
        echo 'Update Failed';
    }
}
}

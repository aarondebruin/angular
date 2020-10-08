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


	if ($btn_name == 'Insert') {
	$query = "INSERT INTO eindopdracht (Voornaam, Achternaam, Straat, Huisnummer, Postcode, Woonplaats, Telefoonnummer) VALUES ('$Voornaam', '$Achternaam', '$Straat','$Huisnummer','$Postcode','$Woonplaats','$Telefoonnummer')"; 
	if(mysqli_query($conn, $query)) {
		echo "Insert Data Successfully";
	}
	else {
		echo "Failed";
	}
	}
}
?>
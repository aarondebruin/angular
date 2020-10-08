<?php

include 'dbconnect.php';

$result = $conn->query("SELECT * FROM eindopdracht");

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
  if ($outp != "") {$outp .= ",";}
  $outp .= '{"Id":"'  . $rs["Id"] . '",';
  $outp .= '"Voornaam":"'   . $rs["Voornaam"]        . '",';
  $outp .= '"Achternaam":"'   . $rs["Achternaam"]        . '",';
  $outp .= '"Straat":"'   . $rs["Straat"]        . '",';
  $outp .= '"Huisnummer":"'   . $rs["Huisnummer"]        . '",';
  $outp .= '"Postcode":"'   . $rs["Postcode"]        . '",';
  $outp .= '"Woonplaats":"'   . $rs["Woonplaats"]        . '",';
  $outp .= '"Telefoonnummer":"'   . $rs["Telefoonnummer"]        . '",';
  $outp .= '"TijdToegevoegd":"'. $rs["TijdToegevoegd"]     . '"}';
}
$outp ='{"records":['.$outp.']}';
$conn->close();

echo($outp);
?>
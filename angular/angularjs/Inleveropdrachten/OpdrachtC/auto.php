<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "root", "", "bedrijf");

$result = $conn->query("SELECT * FROM Bedrijf");

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
  if ($outp != "") {$outp .= ",";}
  $outp .= '{"bedrijfsnaam":"'  . $rs["bedrijfsnaam"] . '",';
  $outp .= '"adres":"'   . $rs["adres"]        . '",';
  $outp .= '"woonplaats":"'   . $rs["woonplaats"]        . '",';
  $outp .= '"Telnr":"'. $rs["Telnr"]     . '"}';
}
$outp ='{"records":['.$outp.']}';
$conn->close();

echo($outp);
?>
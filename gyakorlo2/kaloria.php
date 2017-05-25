<?php
CONST servername = "127.0.0.1";
CONST username = "sirius";
CONST password = "sirius";
CONST dbname = "kaloria";

  function keres($key = null, $value = null){
    if($key && $value){
      $conn = new mysqli(servername, username, password, dbname);
      mysqli_set_charset($conn,"utf8");
      if ($conn->connect_error) {
        die("Kapcsolodasi hiba: " . $conn->connect_error);
      }

      $sql = "SELECT * FROM kaloria WHERE " . $key . " LIKE '" . $value . "';";
      $eredmeny = array();
      $eredmeny = $conn->query($sql);
      $conn->close;

      if($eredmeny->num_rows > 0){
        $sorok = array();
        while($sor = $eredmeny->fetch_assoc()){
          $sorok[] = $sor;
        }
        return $sorok;
      } else {
        return FALSE;
      }
    } else {
      return FALSE;
    }
  }

  $talalatok = null;
  if(isset($_POST['etel'])){
    $etel = $_POST['etel'];
    $talalatok = keres('etelnev', $etel);
  } else {
    $talalatok = FALSE;
  }
?>
<html>
<head>
  <title>Biosziget</title>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="biosziget.css">
</head>
<body>
<div class="wrapper">
  <div class="center">
    <h1>Biosziget</h1>
    <div>
      Ahol az egészség lakik.<br />A biosziget segít neked, hogy betarthasd a kiegyensúlyozott étrend szabályait!
    </div>
  </div>
  <?php
  //ha a keresett értek ismétlpdik az adatbázisban
  if(gettype($talalatok) == 'array'){
    echo "<table>
      <tr>
        <td>
          Megnevezes
        </td>
        <td>
          Kaloria
        </td>
        <td>
          feherje
        </td>
        <td>
          zsir
        </td>
        <td>
          szenhidrat
        </td>
      </tr>";
    foreach ($talalatok as $talalat) {
      echo "<tr>";
      foreach ($talalat as $value) {
        echo "<td>" . $value . "</td>";
      }
      echo "</tr>";
    }
    echo "</table>";
  } elseif(!$talalatok){
    echo "<h2>Nincs találat!</h2>";
  }
  ?>
  <a href="biosziget.html">Vissza az előző oldalra</a>
</div>
</body>
</html>

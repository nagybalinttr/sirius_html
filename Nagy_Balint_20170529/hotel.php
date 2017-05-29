<?php
CONST servername = "127.0.0.1";
CONST username = "sirius";
CONST password = "sirius";
CONST dbname = "hotel";

  function keres($value = null){
    if($value){
      $conn = new mysqli(servername, username, password, dbname);
      mysqli_set_charset($conn,"utf8");
      if ($conn->connect_error) {
        die("Kapcsolodasi hiba: " . $conn->connect_error);
      }

			$sql = "SELECT helyseg.nev, helyseg.orszag, szalloda.sznev
      FROM helyseg INNER JOIN szalloda ON helyseg.az = szalloda.h_az WHERE helyseg.orszag LIKE '".$value."'";

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
  if(isset($_POST['country'])){
    $orszag = $_POST['country'];
    $talalatok = keres($orszag);
  } else {
    $talalatok = FALSE;
  }
?>
<html>
<head>
  <title>parlagisas</title>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="style.css?ver=<?php echo time(); ?>">
</head>
<body>
  <div class="wrapper">
    <div class="center">
      <?php
      //ha a keresett értek ismétlpdik az adatbázisban
      if(gettype($talalatok) == 'array'){
        echo "<table class='center-align' id='tablazat'>
          <tr>
            <td>
              Település neve:
            </td>
            <td>
              Ország:
            </td>
            <td>
              Szálloda név:
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
    </div>
  </div>
</body>
</html>

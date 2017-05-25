<?php
CONST servername = "127.0.0.1";
CONST username = "sirius";
CONST password = "sirius";
CONST dbname = "futar";

  function keres($value = null){
    if($value){
      $conn = new mysqli(servername, username, password, dbname);
      mysqli_set_charset($conn,"utf8");
      if ($conn->connect_error) {
        die("Kapcsolodasi hiba: " . $conn->connect_error);
      }

			$sql = "SELECT futar.fnev, vevo.vnev, vevo.vcim
			FROM ((futar
			INNER JOIN rendeles ON futar.fazon = rendeles.fazon)
			INNER JOIN vevo ON rendeles.vazon = vevo.vazon) WHERE futar.fnev LIKE '".$value."';";

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
  if(isset($_POST['nev'])){
    $futar = $_POST['nev'];
    $talalatok = keres($futar);
  } else {
    $talalatok = FALSE;
  }
?>
<html>
<head>
  <title>villamfutar</title>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="style.css?ver=<?=time();?>">
</head>
<body>
<div class="wrapper">
	<div class="center-align" style="width: 700px;">
    <img class="center-align" src="futar.jpg" width="700" height="100" class="center-align" />
  </div>
  <div class="center">
    <h1>Villámfutár</h1>
		<?php
	  //ha a keresett értek ismétlpdik az adatbázisban
	  if(gettype($talalatok) == 'array'){
	    echo "<table class='center-align' id='tablazat'>
	      <tr>
	        <td>
	          Futár név
	        </td>
	        <td>
	          Vevő név
	        </td>
	        <td>
	          Vevő cím
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
	  <a href="villamfutar.html">Vissza az előző oldalra</a>
  </div>
</div>
</body>
</html>

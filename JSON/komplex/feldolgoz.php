<?php
  $arr = array();
  if (!empty($_POST['vezeteknev']) && !empty($_POST['keresztnev']) && !empty($_POST['tanar'])) {
    //Ha POST methodal erkezik be az adat
    $arr = array(
      'vezeteknev' => $_POST['vezeteknev'],
      'keresztnev' => $_POST['keresztnev'],
      'diak' => $_POST['tanar'] == 1 ? true : false
    );
    JSONIras($arr);
  } elseif($_POST['data']) {
    //Ha AJAX-al erkezik be az adat
    $tmp = json_decode($_POST['data'], true);

    $arr = array(
      'vezeteknev' => $tmp['vezeteknev'],
      'keresztnev' => $tmp['keresztnev'],
      'diak' => $tmp['tanar'] == 1 ? true : false
    );

    JSONIras($arr, true);
    echo 'success';
  } else {
    echo 'error';
  }

  function JSONIras($arr = null, $ajax = false)
  {
    $fileName = 'adatok.json';
    $JsonFile = fopen($fileName, "a+");

    if (filesize($fileName) === 0) {
      $serialized_array = json_encode($arr);
      $str = '{"emberek": [' . $serialized_array . ']}';
      fwrite($JsonFile, $str);
    } else {
      $tmp = fread($JsonFile,filesize($fileName));
      $tmp = json_decode($tmp);
      $tmp->emberek[] = $arr;

      $finally = json_encode($tmp);

      file_put_contents($fileName, '');
      fwrite($JsonFile, $finally);
    }
    fclose($JsonFile);

    if (!$ajax) {
      echo 'sikeres fileba iras<br />';
      echo '<a href="json_olvasas.php">JSON olvasas</a><br /><a href="json_iras.php">JSON iras</a>';
    }
  }
?>

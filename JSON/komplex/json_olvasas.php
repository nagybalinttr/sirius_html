<!DOCTYPE html>
<html>
<meta charset="utf-8" />
<title>JSON Olvasas es DOM ba iras</title>
<style>
  p {
      padding: 10px;
  }

  .diak {
      background: #d3d3d3;
      color: #df0000;
  }

  .kakukk {
      background: #000;
      color: #fff;
  }

  .tanar {
      font-size: 18px;
      font-weight: bolder;
      border: 1px solid black;
      background: #df0000;
  }
</style>
<script src="json_olvasas.js?ver=<?php echo time(); ?>"></script>
<body onload="iraslassan();"> <!-- iras(); -->
  <h1>JSON beolvasása és DOM-ba írása</h1>
  <div id="container"></div>
  <a href="json_iras.php">JSON iras</a>
</body>
</html>

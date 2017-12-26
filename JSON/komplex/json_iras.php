<!DOCTYPE html>
<html>
<head>
<title>JSON Írás</title>
<meta charset="utf-8" />
<style>
  * {
    font-size: 18px;
    font-weight: bold;
  }

  table.container {
    width: 100%;
    border: 2px dashed black;
  }

  table.container td {
    width: 50%;
    border: 1px solid black;
  }

  table.form {
    width: 100%;
    border: none;
  }

  input, textarea {
    width: 90%;
  }

  textarea {
    height: 100px;
  }
</style>
<script src="json_elonezet.js?ver=<?php echo time(); ?>"></script>
</head>
<body>
  <table class="container">
    <tr>
      <td>
        <form method="post"> <!-- TODO AJAX bekuldes -->
          <table class="form">
            <tr>
              <td>
                Név
              </td>
              <td>
                <input name="vezeteknev" placeholder="Add meg a vezetek nevet" />
              </td>
            </tr>
            <tr>
              <td>
                Lakcím
              </td>
              <td>
                <input name="keresztnev" placeholder="Keresztnev" />
              </td>
            </tr>
            <tr>
              <td>
                Telefonszám
              </td>
              <td>
                <select name="tanar">
                  <option disabled selected="selected">Válassz</option>
                  <option value="0">Diák</option>
                  <option value="1">Tanár</option>
                </select>
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <button onclick="ajaxkuldes();" type="submit">Mentés</button>
              </td>
            </tr>
          </table>
        </form>
      </td>
      <td>
        <h3>JSON előnézet</h3>
        <textarea id="elonezet" readonly></textarea>
      </td>
    </tr>
  </table>
  <a href="json_olvasas.php">JSON Olvasas</a>
</body>
</html>

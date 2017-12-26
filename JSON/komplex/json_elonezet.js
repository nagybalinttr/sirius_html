var JsonObj = new Object();

document.addEventListener('DOMContentLoaded', function() {
  var inputs = document.querySelectorAll('input');
  var select = document.querySelector('select');
  select.onchange = MezoValtozas;

  for (var i = 0; i < inputs.length; i++) {
    inputs[i].onchange = MezoValtozas;
  }
}, false);

function MezoValtozas(esemeny) {

  var ObjKulcs = esemeny.target.name;
  var ObjErtek = esemeny.target.value;

  JsonObj[ObjKulcs] = ObjErtek;

  var textarea = document.getElementById('elonezet');
  textarea.value = '[' + JSON.stringify(JsonObj) + ']';
}

function ajaxkuldes() {
  var http = new XMLHttpRequest();
  var url = "feldolgoz.php";
  var params = "data=" + JSON.stringify(JsonObj);
  http.open("POST", url, true);
  http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

  http.onreadystatechange = function() {
    if (http.readyState == 4 && http.status == 200) {
      if (http.responseText == 'success') {
        alert('Sikeres fileb iras');
      } else {
        alert('Hiba tortent az adat kuldese kozben');
      }
    }
  }
  http.send(params);
}

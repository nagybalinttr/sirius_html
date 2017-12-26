function iras()
{
  var szoveg = null;
  var json_hossza = null;
  var obj = null;
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      szoveg = this.responseText;
      obj = JSON.parse(szoveg);
      json_hossza = obj.emberek.length;

      for (var i = 0; i < json_hossza; i++) {
        var osztaly = null;
        var string = 'Vezeteknev: ' + obj.emberek[i].vezeteknev + ' Keresztnev: ' + obj.emberek[i].keresztnev;

        if (obj.emberek[i].diak === true) {
          osztaly = 'diak';
        } else if(obj.emberek[i].diak === false) {
          osztaly = 'tanar';
        } else {
          osztaly = '';
        }

        var ujelem = document.createElement('p');
        ujelem.setAttribute("class", osztaly);
        ujelem.setAttribute("data-array-id", i);
        var ujtartalom = document.createTextNode(string);
        ujelem.appendChild(ujtartalom);
        document.getElementById("container").appendChild(ujelem);
        console.info('i: ' + i);
      }

    }
  };
  xhttp.open("GET", "adatok.json", true);
  xhttp.send();
}

function iraslassan()
{
  var szoveg = null;
  var json_hossza = null;
  var obj = null;
  var i = 0;
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      szoveg = this.responseText;
      obj = JSON.parse(szoveg);
      json_hossza = obj.emberek.length;

        var timerInterval = setInterval(function() {
          if (i < json_hossza) {
            var osztaly = null;
            var string = 'Vezeteknev: ' + obj.emberek[i].vezeteknev + ' Keresztnev: ' + obj.emberek[i].keresztnev;

            if (obj.emberek[i].diak === true) {
              osztaly = 'diak';
            } else if(obj.emberek[i].diak === false) {
              osztaly = 'tanar';
            } else {
              osztaly = 'kakukk';
            }

            var ujelem = document.createElement('p');
            ujelem.setAttribute("class", osztaly);
            ujelem.setAttribute("data-array-id", i);
            var ujtartalom = document.createTextNode(string);
            ujelem.appendChild(ujtartalom);
            document.getElementById("container").appendChild(ujelem);
            console.info('i: ' + i);
            i = i + 1;
          } else {
            alert('vegig olvastuk a JSON-t');
            clearInterval(timerInterval);
          }
        }, 1000);



    }
  };
  xhttp.open("GET", "adatok.php", true);
  xhttp.send();
}

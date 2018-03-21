function read()
{
  var array = null;

  var httpx = new XMLHttpRequest();

  httpx.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      array = JSON.parse(this.responseText);

      for (var i = 0; i < array.cd.length; i++)
      {
        var write = 'Cím: ' + array.cd[i].TITLE + ' Előadó: ' + array.cd[i].ARTIST + ' Ország: ' + array.cd[i].COUNTRY + ' Cég: ' + array.cd[i].COMPANY + ' Ár: ' + array.cd[i].PRICE + ' Év: ' + array.cd[i].YEAR;

        var sor = document.createElement('div');
        var szoveg = document.createTextNode(write);
        sor.appendChild(szoveg);
        document.getElementById("tartalom").appendChild(sor);
      }
    }
  }
  httpx.open('GET', 'fjson.json', true);
  httpx.send();
}

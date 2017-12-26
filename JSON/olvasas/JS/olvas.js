function olvasas()
{
  var tomb = null;

  var ajaxkeres = new XMLHttpRequest();

  ajaxkeres.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      tomb = JSON.parse(this.responseText);

      for (var i = 0; i < tomb.emberek.length; i++)
      {
        var kiirtszoveg = 'Nev: ' + tomb.emberek[i].vezeteknev + ' ' + tomb.emberek[i].keresztnev;

        var sor = document.createElement('div');
        var szoveg = document.createTextNode(kiirtszoveg);
        sor.appendChild(szoveg);
        document.getElementById("tartalom").appendChild(sor);
      }
    }
  }
  ajaxkeres.open('GET', 'JS/minta.json', true);
  ajaxkeres.send();
}

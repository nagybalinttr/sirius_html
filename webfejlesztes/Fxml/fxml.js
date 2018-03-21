function read() {
    var httpx = new XMLHttpRequest();
    httpx.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
                myFunction(this);
        }
    };
    httpx.open("GET", "Fxml.xml", true);
    httpx.send();
}
function myFunction(xml) {
    var i;
    var xmlDoc = xml.responseXML;
    var x = xmlDoc.getElementsByTagName("CD");
    for (i = 0; i <x.length; i++) { 
     var write = x[i].getElementsByTagName("ARTIST")[0].childNodes[0].nodeValue + " " +
      x[i].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue + " " +
      x[i].getElementsByTagName("COUNTRY")[0].childNodes[0].nodeValue + " " +
      x[i].getElementsByTagName("COMPANY")[0].childNodes[0].nodeValue + " " +
      x[i].getElementsByTagName("PRICE")[0].childNodes[0].nodeValue + " " +
      x[i].getElementsByTagName("YEAR")[0].childNodes[0].nodeValue;
      
      var sor = document.createElement('div');
      var szoveg = document.createTextNode(write);
      sor.appendChild(szoveg);
      document.getElementById("tartalom").appendChild(sor);
    }
  }
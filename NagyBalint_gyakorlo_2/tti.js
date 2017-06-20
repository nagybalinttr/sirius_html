function tti() {
  var suly = document.getElementById('suly').value;
  var magassag = document.getElementById('magassag').value;
  if ((suly != '' && magassag != '') && (suly > 0 && magassag > 0)) {
    suly = parseFloat(suly);
    magassag = parseFloat(magassag);
    var tti = (suly / magassag) * magassag * 0.0001;
    alert('Index: ' + tti);
  } else {
    alert('Hibas adatbevitel!');
  }
}

function changeAJAX(){
    var httpx = new XMLHttpRequest();
    httpx.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            document.getElementById("here").innerHTML = this.responseText;

        }
    }
    httpx.open("GET", "fajax.txt");
    httpx.send(); 
}
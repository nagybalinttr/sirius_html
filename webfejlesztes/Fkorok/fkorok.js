function red(a){
    a.setAttribute("fill", "red");
}
function reset(){
     var c = document.getElementsByTagName("circle");
    for(var i = 0; i<c.length; i++){
         var color = c[i].getAttribute("id");
         c[i].setAttribute("fill", `${color}`);
    }
}

    function word(){
        var r = document.getElementById("text");
        r.setAttribute("fill", "#000000");
    }
    
    function word2(){
        var r = document.getElementById("text");
        r.setAttribute("fill", "#ff0000");
    }
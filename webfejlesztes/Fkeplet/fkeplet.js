var x;
var y;
var z;

function szamol(){
    x = document.getElementById("x").value;
    y = document.getElementById("y").value;
    z = document.getElementById("z").value;

    if(isNaN(x) || isNaN(y) || isNaN(z)){
        alert("Hibás az értékek egyike");
        console.log(x);
        console.log(y);
        console.log(z);
    }
    else{
        var c = Math.sqrt(x);
        var b = Math.sqrt(y);
        var a = 2*c - 3* b + 5*z;
        alert(a);
    }
}
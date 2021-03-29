function addtocarts(id) {

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
            var data = document.getElementById('add-alert' + id).innerHTML;
            makeAlert(id, data);
            var msg = "Product " + JSON.parse(this.responseText).status;

        }
    };
    xhttp.open("POST", "http://localhost:8080/cart", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("id=" + id + "&quantity=1");
}

function makeAlert(id, data) {
    document.getElementById('add-alert' + id).innerHTML = data;
    document.getElementById('add-alert' + id).style.display = 'block';
    
    setTimeout(function () {
        document.getElementById('add-alert' + id).style.display = 'none';
    }, 500);

}
function addtowishlist(id) {

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
            var data = document.getElementById('add-alert' + id).innerHTML;
            makeAlert(id, data);
        }
    };
    xhttp.open("POST", "http://localhost:8080/wishlist", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("id=" + id);
}
function hide() {
    document.getElementById('alertbox').style.display = "none";
}



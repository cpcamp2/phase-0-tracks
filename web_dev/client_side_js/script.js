// Make sure this js is linked to the html w/ a test
console.log("Hello world");

function addBorder(event) {
	console.log(event);
	event.target.style.border = "5px solid red";
}

var photo = document.getElementById("stock-photo");
photo.addEventListener("click", addBorder);
// // Make sure this js is linked to the html w/ a test
// console.log("Hello world");

function addBorder(event) {
	console.log(event);
	event.target.style.border = "5px solid red";
}

//*Tried and failed at getting the image to turn into a gif of a dragon melting ppl

// function changeImage(img) {
// 	if(img.src.match(/blank/)) img.src = "black.jpg";
//    else img.src = "blank.jpg";
// }

var photo = document.getElementById("stock-photo");
photo.addEventListener("click", addBorder);
//photo.addEventListener("click", addBorder);
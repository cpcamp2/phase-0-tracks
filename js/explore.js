// pseudocode a function that takes a string as a parameter and reverses the string
// first create a function with a string parameter
function reverseName(string){
	var splitString = string.split('');
	var reverseArray = splitString.reverse();
	var joinArray = reverseArray.join('');
	return joinArray
}

var result = reverseName("Hello");

console.log(result)

if (1 == 1) {
	console.log(result)
}
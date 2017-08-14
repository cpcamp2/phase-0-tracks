//Release 0

// Write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// First step make an array 
var myArray = ["long phrase","longest phrase","longer phrase"]

// Create the function w/ a variable that holds the longest string
function longestWord(myArray) {
var longestString = " "

// Iterate through the array of strings and compare the length of the each w/ the length of the largest
for (var i = 0; i < myArray.length; i++){
	if (myArray[i].length > longestString.length){
		longestString = myArray[i]
	}
}
return longestString
}

//driver code
//console.log(longestWord(myArray))

//Release 1

//Find a key-value match
//Create varaiable keys
//if the keys in object 1 are equal to the keys in object2 return true
function matching_pair(object1, object2){
	var keys = Object.keys(object1);
	for (var i = 0; i < keys.length; i++){
		if (object1[keys[i]] == object2[keys[i]]){
			return true;
		}
	}
	return false;
}
// driver code
// var object1= {name: "Steven", age: 54}
// var object2= {name: "Tamir", age: 54}
// console.log(matching_pair(object1,object2))

//Release 2
// Generate Random Test Data
// Write a function that takes an integer for length and builds and returns an array of strings of the given length
function integerTaker(int){
	var stringArray = []
	for (var i = 0; i < int; i++){
		var ranLength = Math.floor(Math.random()*10)
		var ranString = ""
		for (var u = 0; u < ranLength; u++){
			ranString += 'h'

		}
		stringArray.push(ranString)
	}
	return stringArray
}
console.log(integerTaker(5))
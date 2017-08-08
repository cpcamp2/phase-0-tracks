// Release 0
var colors = ['Red', 'Blue', 'Green', 'Yellow'];
var horses = ['Henry', 'Swayze', 'John', 'Arthur'];

colors.push('Pink');
horses.push('Philip');

console.log(colors);
console.log(horses);

// Release 1
var stable = {};

for (var i = 0;i<horses.length;i++) {
	name = horses[i];
	color = colors[i];
	stable[name] = color;
}

// driver code:
console.log(stable);

// Release 2
function Car(year,type,color) {
console.log("Our new car:", this);
this.year = year;
this.type = type;
this.color = color;

this.testDrive = function(){
	console.log('*You are test driving the vehicle*')
	}
};

//carMakes = ['Ferrari', 'Mercedes', 'Volvo', 'Suburu'];

console.log("Let's build a ford...");
var ford = new Car(2016,"truck","black");
console.log(ford);
ford.testDrive();

console.log("Let's build a ferrari...");
var ferrari = new Car(1977,"sports car","red");
console.log(ferrari);
ferrari.testDrive();

console.log("Let's build a mercedes...");
var mercedes = new Car(1977,"sports car","red");
console.log(mercedes);
mercedes.testDrive();

console.log("Let's build another car...");
var suburu = new Car(1977,"sports car","red");
console.log(suburu);
suburu.testDrive();
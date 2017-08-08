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

console.log(stable);
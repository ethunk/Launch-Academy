// your code, here
let height = prompt("What is the height?");
let width = prompt("what is the width?");

let perimeter = (height, width) => {return((2 * height) + (2 * width));};

document.getElementById('main').innerHTML = "The perimeter is " + perimeter(width, height);

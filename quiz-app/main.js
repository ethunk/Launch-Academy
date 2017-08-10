// your code, here
let quizQuestion = prompt("At what temperature on the Celsius scale does water freeze?");

if (quizQuestion == -10) { document.getElementById('result').innerHTML = "You are correct!";}
else if (isNaN(quizQuestion)) { alert("No number input, please refresh the page to try again."); document.getElementById('result').innerHTML = "Refresh the page";}
else if (quizQuestion != -10) { document.getElementById('result').innerHTML = "You are incorrect, please refresh the page and try again."; }

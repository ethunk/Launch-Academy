let companyName = 'ChangeforCause Inc.,';
let anOffering = 'a new way to donate';
let aTargetAudience = 'to help make it easier to give';
let solveAProblem = 'by providing incentives';
let secretSauce = 'where big brands give big rewards \n for every donation they make';

// your code, here
let lineOne = "My company, " + companyName;
let lineTwo = "is developing " + anOffering;
let lineThree = "to help " + aTargetAudience;
let lineFive = secretSauce + "!";
let pitch = lineOne + '\n' + lineTwo + '\n' + lineThree + '\n' + solveAProblem + '\n' + lineFive;

document.getElementById('main').innerHTML = pitch;

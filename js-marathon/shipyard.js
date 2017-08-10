// YOUR CODE GOES HERE
let Spaceship = require('./Spaceship').Spaceship;
let ourShip = new Spaceship('Infinity');

let Crewmember = require('./Crewmember').Crewmember;

let rocket = require('./Rocket');

let crewNames = [
  'Teddy',
  'Seth',
  'John',
  'Carmen'
];

let trainCrew = (array) => {
  let trainedCrew = [];
  array.forEach(function(name) {
    trainedCrew.push(new Crewmember(name, true));
  });
  return trainedCrew;
};

let trainedCrewObjs = trainCrew(crewNames);

let countdown = (integer) => {
  if (integer === 0) {
    console.log(`Blast off!`);
    ourShip.takeoff();
  }
  else {
    console.log(integer);
    let countingDown = integer - 1;
    setTimeout(function() {
    countdown(countingDown);}, 1000);
    }
};

let launchpad = (ship, crew, rocket) => {
  console.log(`Initiating launch sequence for ${ship.name}, please stand by.`);
  ourShip.loadCrew(crew);
  ourShip.captain(crew);
  ourShip.mountPropoulsion(rocket);
  rocket.addFuel(5);
  countdown(2);
};

launchpad(ourShip, trainedCrewObjs, rocket);

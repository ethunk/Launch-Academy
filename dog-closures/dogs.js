function dogTalk() {
  let commonDogName = 'Rover';
  let unCommonDogName = 'Susan';

  return {
    stateDogNameFact() {return `I believe ${commonDogName} is an excellent dog name. The name ${unCommonDogName} is a bad dog name.`;},
    stateDogNameOpinion() {return `I have never met a dog named ${unCommonDogName}; while several dogs are named ${commonDogName}`;},
    callDogs() {return `Hey, come here ${commonDogName} and ${unCommonDogName}`;}
  };
}

// your code, here
let question = prompt("What is your question?");
let magic8Ball = [
  'It is certain',
  'It is decidedly so',
  'Without a doubt',
  'Yes, definitely',
  'You may rely on it',
  'As I see it, yes',
  'Most likely',
  'Outlook good',
  'Yes',
  'Signs point to yes',
  'Reply hazy try again',
  'Ask again later',
  'Better not tell you now',
  'Cannot predict now',
  'Concentrate and ask again',
  "Don't count on it",
  'My reply is no',
  'My sources say no',
  'Outlook not so good',
  'Very doubtful'
][Math.floor(Math.random() * 20)];
let ask8Ball = (question) => {document.getElementById('main').innerHTML = magic8Ball;};

ask8Ball(question);

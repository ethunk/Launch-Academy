let reverseString = (word) => {
  let result = '';
  let newWord = word.split("");
  newWord.forEach((letter) => {
   result += `${letter}`;
  });
return result;
};

// Test the reverseString function, and print results to the console.
let words = ['racecar', 'Andy', 'boolean', 'redrum'];
let reversedWords = ['racecar', 'ydnA', 'naeloob', 'murder'];

words.forEach ((word, i) => {
  let reversedWord = reverseString(word);
  i = reversedWords[i];
  let result = (reversedWord == i);
  let outputString = 'The reverse of "' + word + '" is: ';
  outputString += reversedWord + '.';
  outputString += '\n' + result + '\n\n';
  console.log(outputString);
});

// reduceString = (str, amount) => {
//     var arrayString = str.split("");
//     var results = [];
//     var compare = "";
//     var index = 0;
//     var i = 0;
//     arrayString.forEach(function(e){
//       if (index = 0) {
//
//         results.push(e);
//         compare = e;
//         index++;
//         i++;
//       } else if (e == compare) {
//         console.log(compare);
//         if (i < amount) {
//           results.push(e);
//           i++;
//         } else {
//           i++;
//         }
//       } else {
//         results.push(e);
//         compare = e;
//         i = 1;
//       }
//     });
//     var string = results.join("");
//     return string;
//   };
// regex version
reduceString = (str, amount) => {
  let re = new RegExp("(.)(?=\\1{" + amount + "})","g");
  return str.replace(re, "");
};

reverseString = (str) => {
  let array = str.split("");
  let reversedArray = array.reverse();
  let string = reversedArray.join("");
  return string;
};

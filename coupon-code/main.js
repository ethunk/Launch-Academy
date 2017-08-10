// your code, here

let couponCodes = ["A", "B", "C", "D", "E", "F", 0, 1, 2, 3, 4 , 5];
let newCouponArray = [];
let newCouponString = '';

let couponCodeCreator = () => {
  let j = couponCodes[Math.floor(Math.random() * couponCodes.length)];
  newCouponArray.push(j);
  couponCodes.splice(j, 1);
};

let couponGenerator = () => {
  for (i = 0; i < 6; i++) {
    couponCodeCreator();
  }
  newCouponArray.forEach ((code) => {
    newCouponString += `${code}`;
  });
};

let clickHere = document.getElementById('click-here');
clickHere.addEventListener('click', () => {
  let couponDiv = document.getElementById('coupon-code');
  couponGenerator();
  couponDiv.innerHTML += "Your coupon code is: " + newCouponString;
});

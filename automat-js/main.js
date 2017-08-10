// your code, here
// Part 1
// let dishes = [];
// let addDish = (dish) => {dishes.push(dish);};
//
// for(i = 0; i < 5; i++) {
//   let dish = prompt("What dish would you like?");
//   addDish(dish);
// }
//
// let foodItem= document.getElementById('main');
//
//   dishes.forEach((dish) => {
//     foodItem.innerHTML += " <div class='food-item'>" + dish + " </div>";
//   });

  // Part 2
  // let dishes = [];
  // let addDish = (dish) => {dishes.push(dish);};
  //
  // for(i = 0; i < 5; i++) {
  //   let dish = prompt("What dish would you like?");
  //   addDish(dish);
  // }
  //
  // let mainDiv = document.getElementById('main');
  //
  // dishes.forEach((dish) => {
  //   let foodItemDiv = document.createElement('div');
  //   foodItemDiv.className = 'food-item';
  //   foodItemDiv.innerHTML += dish;
  //   mainDiv.appendChild(foodItemDiv);
  // });

  // Part 3
  let dishes = ["Greek Pizza", "New York Pizza", "Detroit Pizza", "Chicago Pizza", "Cheese Cake"];
  let addDish = (dish) => {dishes.push(dish);};
  let mainDiv = document.getElementById('main');

  dishes.forEach((dish) => {
    let foodItemDiv = document.createElement('div');
    foodItemDiv.className = 'food-item';
    foodItemDiv.innerHTML += dish;
    mainDiv.appendChild(foodItemDiv);
    foodItemDiv.addEventListener('click', () => {foodItemDiv.className = ' hidden';});
  });

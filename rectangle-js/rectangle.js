// your code, here
class Rectangle {
  constructor(width, height) {
    this.width = width;
    if (!!height) {this.height = height;}
    else {this.height = width;}
  }
  area() {return this.width * this.height;}
}

let rectangle = new Rectangle(5, 6);
rectangle.area();

let anotherRectangle = new Rectangle(9);
anotherRectangle.area();

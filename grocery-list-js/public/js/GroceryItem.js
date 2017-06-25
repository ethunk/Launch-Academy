// your GroceryItem code, here
class GroceryItem {
  constructor(name, quantity = 1) {
    this.name = name;
    this.quantity = quantity;
  }
  toString(object) {
    return `(${this.quantity}) ${this.name}`;
  }
}

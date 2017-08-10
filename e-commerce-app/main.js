let inventory = [
  ['LA-LG-STICKER', 300, 'Large Sticker', 'images/la-large-sticker-256px.png', 'Show your Launch pride by plastering your laptop with these beautiful die-cut stickers.'],
  ['LA-SM-STICKER', 200, 'Small Sticker', 'images/la-small-sticker-128px.png', 'It\'s a tiny Launch sticker. How cute!'],
  ['LA-T-SHRIT', 50, 'T-Shirt', 'images/la-t-shirt-200px.png', '100% Cotton. Makes a great gift.']
];

// your code, here
class Product {
  constructor(id, quantity, name, url, description) {
    this.id = id;
    this.quantity = quantity;
    this.name = name;
    this.url = url;
    this.description = description;
  }
  sell() {
    if (this.quantity > 0) {
      this.quantity -= 1;
    }
  }

  toHTML() {
    let HTMLstring = "";

    HTMLstring += `<div class="product">`;
    HTMLstring += `<h3>${this.name}</h3>`;
    HTMLstring += `<h5>${this.quantity} In Stock</h5>`;
    HTMLstring += `<img src=${this.image} />`;
    HTMLstring += `<h3>Description</h3>`;
    HTMLstring += `<p>${this.description}</p>`;
    HTMLstring += `</div>`;

    return HTMLstring;
  }
}

  let products = inventory.map(function(x) {
    return new Product(...x);
  });

  let element = document.getElementById('all-products');

  products.forEach((product) => {
    element.innerHTML += product.toHTML();
  });

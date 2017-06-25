// your GroceryList code, here

class GroceryList {
  constructor(title, date = new Date(year, month, day)){
    this.title = title;
    this.date = date;
    this.items = [];
  }

  addItem(item) {
    this.items.push(item);
  }

  toHTML() {
    let HTMLstring = "";

    HTMLstring += `<div class="storeTitle">`;
    HTMLstring += '<ul>';
    HTMLstring += '<h1>' + `${this.title}` + '</h1>';
    this.items.forEach(function(item) {
      HTMLstring += '<li>' + `${item}` + '</li>';
    });
    $('#main').on('submit', (event) => {
      event.preventDefault();

      let request = $.ajax({
        method: 'GET',
        url: '/groceries.json'
      });

      request.done((items) => {
        HTMLstring += '<li>' + `${items["item"]}` + '</li>';
      });
    });

    HTMLstring += '</ul>';
    HTMLstring += `</div>`;

    return HTMLstring;
  }
}

$('#get-dish').on('click', (event) => {
  event.preventDefault();

  let request = $.ajax({
  method: 'GET',
  url: "/dishes/random.json"
  });

  request.done((dishData) => {
    alert(`Your random dish is: ${dishData["dish"]}`);
  });
});

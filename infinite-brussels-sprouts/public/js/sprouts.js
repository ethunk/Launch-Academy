// YOUR CODE GOES HERE
let page = 2;

let addTweets = () => {
  let tweets = $.ajax({
    method: "GET",
    url: "/tweets.json?page=" + page
  });

  let loadTweets = (tweets) => {
    for (i = 0; i < tweets.length; i++) {
      let newTweet = "<li class='tweet'><div class='body'>" + tweets[i]["text"] +
      "</div><div class='user'>" + tweets[i]["username"] + "</div></li>";

      $('.tweets').append(newTweet);
    }
  };

  tweets.done(function(data) {
    loadTweets(data);
    page += 1;
  });
};

window.onscroll = function(event) {
  if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
    addTweets();
  }
};

// your code, here
let snowfall = Math.round(prompt("How much snow fell last night?"));

snowfall;

if (snowfall > 0 && snowfall <= 49) { document.getElementById('main').innerHTML = "I will charge $20 to shovel."; }
else if (snowfall > 49 && snowfall <= 149) { document.getElementById('main').innerHTML = "I will charge $50 to shovel.";}
else if (snowfall > 149 && snowfall <= 299) { document.getElementById('main').innerHTML = "I will charge $100 to shovel.";}
else if (snowfall >= 300) { document.getElementById('main').innerHTML = "I will chage $150 flat to shovel."; }

alterContext = (fn, obj) => {
  return fn.bind(obj)();
};

alterObjects = (constructor, greeting) => {
  constructor.prototype.greeting = greeting;
};

iterate = obj => {
  return Object.getOwnPropertyNames(obj).map(function(val, idx, array) {return val + ': ' + obj[val];});
};

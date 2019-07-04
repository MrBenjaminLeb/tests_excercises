function compareElements(a, b) {
    // something
    return a.count - b.count;
}

function sortByPriceAscending(jsonString) {
  // Your code goes here
  var grocery_list = JSON.parse(jsonString);
  grocery_list.sort((a, b) => (a.price > b.price) ? 1 : (a.price === b.price) ? ((a.name > b.name) ? 1 : -1) : -1 )
  return JSON.stringify(grocery_list);
}

console.log(sortByPriceAscending('[{"name":"eggs","price":1},{"name":"coffee","price":9.99},{"name":"rice","price":4.04}]'));
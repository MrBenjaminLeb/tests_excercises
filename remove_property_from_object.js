function removeProperty(obj, prop) {
    if (typeof obj[prop] === "undefined") {
        console.log('property does not exist')
        return false;
      }
      console.log('deleting property')
      delete obj[prop];
      return true;
  }

  var obj = {"firstName":"John", "lastName":"Doe", "age":50, "eyeColor":"blue"};
  var prop = "ag";
  removeProperty(obj, prop)
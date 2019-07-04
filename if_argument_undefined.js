function ensure(value) {
    if (typeof value === "undefined") {
        throw "is undefined";
    }
    else {
        return value;
    }
    

}

console.log(ensure());
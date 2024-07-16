const assert = require('assert');
const { sayHello } = require('./app');

assert.strictEqual(sayHello(), "Hello, World!");
console.log("Tests passed!");
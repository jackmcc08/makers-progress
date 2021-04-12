console.log("Hello World!")

class Greeting {
  hello = function(person) {
    return `Hello ${person}`
  }
}

greeting = new Greeting()

greeting.hello('Jack')

var hiTimmy = function() {
    return('Hi, Timmy!')
}

let hiNimmy = () => 'Hi, Nimmy!';

var hi = function(name) { return `Hi, ${name}!` }
undefined
hi("Nata")
"Hi, Nata!"
let hello = function(name) { return `Hello, ${name}!` }
undefined
hello("Jack")
"Hello, Jack!"

let a = 'hello'; // globally scoped
var b = 'world'; // globally scoped
console.log(window.a); // undefined
console.log(window.b); // 'world'
var a = 'hello';
var a = 'world'; // No problem, 'hello' is replaced.
let b = 'hello';
let b = 'world'; // SyntaxError: Identifier 'b' has already been declared

function run() {
  var foo = "Foo";
  let bar = "Bar";
  console.log(foo, bar); // Foo Bar
  {
    var moo = "Mooo"
    let baz = "Bazz";
    console.log(moo, baz); // Mooo Bazz
  }
  console.log(moo); // Mooo
  console.log(baz); // ReferenceError
}
run();


let hash = { 1 : "2", "2" : 1}

hash[1]


for (let cats = 0, cats > 10, cats++) {
  console.log('Caaaats')
}

function hi(person) {
  return 'Hi, ' + person + '!';
}

in the command line, you can add
`| jq .`

How do you test a web application need a test frame for that.

You have a starting a starting testing framework.

- I give it some arguments
- I run some javascript code
- I the assert what is on the page



Need to understand Callbacks and promises first before jumping into Async code.

Use done() for async test calls


don't commit unmocked APIs!

move to mocks as soon as possible.



look at window.fetch - window is the default object - like main in Ruby.

for the arrow function it keeps this. as the outside context, as opposed to function () which creates a different this.

```
function fn0 (name) {
  return `Hello, ${name}!`;
}

let fn1 = function (name) {
  return `Hello, ${name}!`;
}

let fn2 = (name) => {
  return `Hello, ${name}!`;
}

let fn3 = (name) => `Hello, ${name}!`;
```

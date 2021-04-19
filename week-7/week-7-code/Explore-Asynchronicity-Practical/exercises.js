// Exploring asynchronicity and the event loop in JS

// 1

setTimeout(function() {
	console.log('hello')
}, 1000)

// It will console.log Hello after 1 second
// It did, the setTimout executes the specified function after a set amount of time.


// 2

var callback = function() {
	console.log('hello')
}
setTimeout(callback, 1000)

// it will do the same as exercise 1, print Hello after 1 second
// It did - a callback here is just a name it does not have any special properties


// 3

console.log('A')

var callback = function() {
	console.log('B')
}

console.log('C')

setTimeout(callback, 1000)

console.log('D')

// It will run A C D B
// setTimeout is an asynchronous function which only calls callback - B when the time has ellapsed, it allows D to run while running the timeout.


// 4

console.log('A')

var callback = function() {
	console.log('B')
}

console.log('C')

setTimeout(callback, 0)

console.log('D')

// My hunch is it runs A C D B as question 3
// Set Timeout still needs to execute, and the timer does not start until all JS is loaded?
//  - It does not run immediately as The callbacks you pass to these functions cannot run until the stack on the main thread is empty.


// 5

var a = 10

var callback = function() {
	a = 20
}

setTimeout(callback, 1000)

console.log(a)

// it will print 10, then return undefined
// a is set at 10 and only reset at 20 after the callback is run after 1 second


// 6

var a = 10

var callback = function() {
	a = 20
}
setTimeout(callback, 0)

console.log(a)

// same as qn 5, will print 10 and then undefined
// The setTimeout only runs when the stack is cleared.


// 7

var a = 10

var callback = function() {
	a = 20
	console.log(a)
}
setTimeout(callback, 0)

// it will print out 20 as nothing else is executed before the callback


// 8

var callback = function() {
	return "hello"
}
setTimeout(callback, 2000)



// it will return hello after 2 seconds, no printing

var test = "this"
var callback = function() {
	return "hello"
}
setTimeout(test = callback, 2000)

setTimeout(console.log(test), 3000)
// What is a callback? - a callback is a function that is executed on completion of another function (e.g. time has elapsed with setTimeout or a fetch request is completed to a url. )
// Can you explain why these are antipatterns:
//    having a callback that returns a value - unless you have something to catch it/use it, then it is just returned into `empty space`
//    having a callback that changes global state - this will potentially change the global state at the wrong time so your other functions are interefered with, using global states anyway can be a recepie for disaster

// Exploring closurers in JS Practicals

// A closure is the combination of a function bundled together (enclosed) with references to its surrounding state (the lexical environment). In other words, a closure gives you access to an outer function’s scope from an inner function. In JavaScript, closures are created every time a function is created, at function creation time.

function makeConverter(rate) {
	function converter(number) {
		return rate * number;
	}

	return converter;
}

var gbp_to_eur = makeConverter(1.12)
var eur_to_gdp = makeConverter(0.89)

gbp_to_eur(34) // 38.080000000000005
gbp_to_eur(1000) // 1120

eur_to_gdp(200) // 178


// The benefit of returning converter is you can set the rate once and then execute the conversion on multiple different current conversions.

console.dir(eur_to_gdp)
console.dir(gbp_to_eur)

function timer() {
 	var startTime = Date.now()
  	function read() {
  		return Date.now() - startTime;
	}
	return read;
}

var t1 = timer()

console.log(t1())


// my first converter

function setAwesomeness(number) {
  let awesome = number
  function whatIsAwesome(string) {
    console.log(`${string} is ${awesome} AWESOME!!!`)
  }
  return whatIsAwesome;
}

var test = setAwesomeness(9999)

test('Jaffa Cake')

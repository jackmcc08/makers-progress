browser - client
servers

clients and servers talk to each other using the HyperText Transfer Protocol. Defined structure for requests and responses.


request - query parameter after ?

The way the server treats the parameter - there will be a tag


/ - generally indicates the root of the project


Use POST when dealing with sensitive data

## Debugging the web

What are the ways to get visibility on over our code?
- Narrow in on your specific error messages: Put a print statement in your test to see what it's expecting vs. what you're getting
- You change the name of something to see how it effects the rest of it to see what's casuing the problem
- Commenting out certain things to see if the rest of it works as expected
- Look at the stack trace - which lines are caught in the error
- Re-read everything that you think is happening
- Rubber duck debugging
- Unit testing in rspec
- Running the actual program to see what it does
- Running snippets of code
- Put in super descriptive strings to print out
- Reading, researching error messages
- Framework specific tools for getting visibility:
-

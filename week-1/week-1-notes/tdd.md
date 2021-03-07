#TDD

References
- https://github.com/makersacademy/course/blob/master/pills/tdd_quality_discussion.md
- https://github.com/makersacademy/course/blob/master/pills/tdd.md
- https://semaphoreci.com/community/tutorials/getting-started-with-rspec
- https://blog.teamtreehouse.com/an-introduction-to-rspec

## TDD Workshop

- Explain why we do TDD
- Describe/diagram TDD as a set of steps
- Apply TDD following the diagram

**Why do we write tests?**
- See what's failing in our code
- Check if our code is working
- Write what you're expecting the program to do
- Summary: **Ensure your code behaves as expected**
- Ensure code behaves as expected
- get visibility => makes it easier to debug the code.
- Independent, isolated way to check parts of our code
- Make sure our program can take several different kinds of input, with expected output
- Setting the environment, you can change the code and check it's still working as expected. => refactoring!
-Coming to a project you haven't worked on before - tests will help you to understand the code, what it's supposed to do?

- *You should test behaviour not the state (not the internals),*

- *Feature tests - tests across multiple class*
- *Unit tests - test the surface of the class*

**Why do we write tests first**
- How you approach the development of the code
- help you keep your code concise
- gives structure before we start programming
- Make sure that the code is clear, interacting with the program
- Ensure that once we start writing code it covers all of the requirements first
- Everything is covered by a test that you write
- match how you break down your user story
- Keeps you focused

1. Write a test first
2. Sit back and ask questions
3. Draw a Diagram
4. Write a user story


## Setting up a good README

https://meakaakka.medium.com/a-beginners-guide-to-writing-a-kickass-readme-7ac01da88ab3

## Domain Models
https://sjmog.github.io/posts/502_domain-modelling/

Domain modelling is one of the first steps in designing software.
It translates user stories into an implementable class structure

Entites - rectangles

Relationships between them - lines and arrows


## Feature Tests

https://www.youtube.com/watch?v=rShBRLyEccY

Once you have a Domain Model for a feature, you need to think about how your Objects and Messages will work together in code. This is called a Feature Test.

It tests the actual feature you expect is working

It should mean that your code errors less and less

These feature tests are done in irb by running the program.

- Similar to an integration test

## Unit tests

Unit tests are the ones actually written in RSPEC.

1. Begin by writing a test for code that does not exist yet.
2. Run the test and see it fail
3. Write code to pass each failure of the test, one step at a time

**Only write the simplest code that will make the test pass, not more!**


## Plenary Session

As you write another test, make your code more general

Tests should be obviously coded

TDD should make code easier to maintain

Is the test failing for the right reason (if a test fail random

You want to test your own code, not ruby

Run your tests after every change in code

# Debugging

## Workshop

- Checking each small part of your code
- Being methodical
- You can run specific tests

- Start with the spec file it gives you a test file

- Note the special rspec syntax which sets up the subject

- StackTrace -- all the places in your code that were run when the error was thrown
- Read it from the bottom up

- Process
    - Tighten the loop (find the exact line the bug is coming from)
        - Use the stack trace
    - Get visibility (Print everything to inspect)
    - Once you know the one thing that is wrong, out of place, misspelled, or not giving you what you expect, try to fix it.
        - use the error message

*Wisest are they who try only one thing to fix the problem. Faffing about trying whatever occurs to you next is a recipe for development hell.*


## Ready Position Mindset

- https://sjmog.github.io/posts/491_learning_to_learn_1/

- Have I identified the single place from which the bug is arising?
- Have I identified the line number on which the bug occurs?
- Have I identified the exact structure which is causing the problem?
- What modifications could be required to eliminate this bug?
- What modifications could I make to ensure this bug is unlikely to happen again?
- What modifications to the way I write code could I make to ensure I don't make bugs like this in future?


## Debugging Practical

- Adopt a FIND THE PROBLEM mindset

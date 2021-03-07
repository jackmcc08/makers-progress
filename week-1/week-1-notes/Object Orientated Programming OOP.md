# Object Orientated Programming OOP

#### Introduction
- resource 1: https://en.wikipedia.org/wiki/Object-oriented_programming
- https://www.reddit.com/r/explainlikeimfive/comments/1pyhng/eli5_objected_oriented_programming/
-

OOP is a programming paradigm based on the concept of objects (that contain data (attributes/propertires) and code (procedures/methods)).

Objects can access and modify itself (Self).

Programs are then written out of objects that can interact with each other. Often based on classes.

#### Features of OOP
-

# Encapsulation
#### Introduction
- resource 1: https://en.wikipedia.org/wiki/Encapsulation_%28computer_programming%29

Encapsulation is the principle of bundling data with the methods of that data, usually into a *class*, then restricting access to that data so that the object cannot be interfered with by a 3rd party piece of code, except for the specified input and outputs.

Typically only the object's own methods should be able to direct inspect and manipulate it's own data.

Specifically (from wikipedia) sometimes means a combo of both sentence.
- A language mechanism for restricting direct access to some of the object's components
- A language construct that facilitates the bundling of data with the methods operating on that data.

Note, however hiding is not always a given as in some languages the components are not hidden automatically.

#### Why?

Encapsulation is used for:
- Control over the code
- Reduction in system complexity by reducing interdependencies and creating specific silos between operations.
- Increases robustness
- Avoids other parts of the code from interfering with the Class mechanisms (i.e. if you can't manipulate the internal structure of a Class instance then you should avoid breaking it).
- Encapsulation encourses decoupling

#### Issues

Use of inheritance can complicate programs if used too excessively and can violate encapsulation as it exposes the subclass to the workings of the superclass.


# SRP (Single-responsibility principle)

#### Introduction
- resource 1: https://en.wikipedia.org/wiki/Single-responsibility_principle

Every class in a program should have a responsibility over a single (and only one) part of the program's functionality, which it should encapsulate.

All of the services should be narrowly aligned with that responsibility.

There should be only one reason for a class to be changed.

# Cohesion

#### Introduction
- resource 1: https://en.wikipedia.org/wiki/Cohesion_(computer_science)

Cohesion refers to the degree to which the elements inside a module belong together.

Cohesion is increased if:
- methods in a class have a lot in common
- methods carry out a small number of related activities
- grouped together in same sub-directory

Why Cohesion?
- Reduced complexity in a single module
- Increased maintainability because a change will only impact that module
- Increased module reusability

Lots of different types of cohesion:
- Coincidental Cohesion (Worst)
- Logical
- Temporal
- Procedural
- Communicational/informational
- Sequential
- Functional Cohesion (best)
- Perfect Cohesion (Atomic)

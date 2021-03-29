1. In REST, URLs aren't just vague strings, they map onto a resource.
    - Similar to an object in OOP
    - It's just a noun that matches to something in the real world
    - You apply this noun to a resource e.g. /restaurants, you don't change the resources.

2. REST gives us a set of actions that HTTP allows us to specify when we create a request.
    - CREATE - POST /restaurants  *(you don't know what the ID is when creating)*
    - READ - GET /restaurants/123
    - UPDATE - PATCH /restaurants/123
    - DELETE - DELETE /restaurants/123

## Routing for a real application

When you want to write a web app, you need a few more routes on top of the basic create, read, update and delete.  You need:

* A route for listing all the records for a certain resource (e.g. all the restaurants).
* A route to show a web form for entering the details of a new record.
* A route to show a web form for entering the new details of an existing record.

Rails has a set of conventions for what URLs to use for these extra things:

```sh
Verb    URI Pattern            Controller#action
------  ---------------------  ------------------
GET     /restaurants           restaurants#index
POST    /restaurants           restaurants#create
GET     /restaurants/new       restaurants#new
GET     /restaurants/:id/edit  restaurants#edit
GET     /restaurants/:id       restaurants#show
PATCH   /restaurants/:id       restaurants#update
PUT     /restaurants/:id       restaurants#update
DELETE  /restaurants/:id       restaurants#destroy
```

## Resources

- http://makers-academy.slides.com/makersacademy/rest
- https://docs.github.com/en/rest/overview

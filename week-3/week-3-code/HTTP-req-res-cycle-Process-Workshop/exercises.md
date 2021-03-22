
https://github.com/makersacademy/skills-workshops/tree/master/how_the_web_works/process_modelling

All code should be rendered in diagram.codes

## Exercise 1

  alias user="User"
  alias browser="Browser"
  alias server="Server"


  user->browser:"Entered the URL and hit enter"
  browser->server: "GET, /"
  server-->browser:"200 OK, HTML"
  browser->browser:"Renders HTML"
  browser-->user:"Displays page to User"

## Exercise 2

  alias user="User"
  alias browser="Browser"
  alias server="Server"

  user->browser:"Entered the URL(rats) and hit enter"
  browser->server:"GET, /(rats)"
  server-->browser:"404 Not Found, HTML"
  browser->browser:"Renders HTML"
  browser->server:"GET, No Such App page"
  server-->browser:"200 OK, No Such App - HTML"
  browser->browser:"Renders HTML"
  browser->user:"Displays No Such App page to User"


  user->browser:"Entered the correct URL and hit enter"
  browser->server: "GET, /"
  server-->browser:"200 OK, HTML"
  browser->browser:"Renders HTML"
  browser-->user:"Displays page to User"


## Exercise 3

alias user="User"
alias browser="Browser"
alias server="Server"

user->browser:"Click on the link to direct to URL"
browser->server:"GET, /cats.html"
server-->browser:"200 OK, HTML"
browser->browser:"Renders HTML"
browser->user:"Displays page to User"
browser->server: "GET, /cats.jpeg"
server-->browser:"200 OK, img-JPEG"
browser->browser:"Renders image"
browser->user:"Displays image on page"

## Exercise 4
alias user="User"
alias browser="Browser"
alias server="Server"

ser->browser:"Click on the link to direct to URL"
browser->server:"GET, /"
server-->browser:"200 OK, HTML"
browser->browser:"Renders HTML"
browser->user:"Displays page to User"
user->browser:"Click on link to 'a list'"
browser->server:"GET, /list.html"
server->browser:"200 OK, HTML"
browser->browser:"Renders HTML"
browser->user:"Displays page to User"
user->browser:"Enters email address and presses submit"
browser->server: "Post, /thanks.html"
server-->browser:"200 OK, HTML"
browser->browser:"Renders HTML"
browser->user:"Displays HTML on page"

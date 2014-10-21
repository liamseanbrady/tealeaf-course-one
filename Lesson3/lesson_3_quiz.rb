# General HTTP

# 1. What is HTML? What is CSS? What is Javascript?

#   - HTML is hyper text markup language. It is used to build the structure of websites.
#   - CSS is cascading style sheets. It is used to design websites using HTML tages, classes, and IDs
#   - Javascript is a scripting language which is used to make websites more interactive.

# 2. What are the major parts of an HTTP request?

#   - Method / URL / Version of HTTP
#   - Headers
#   - Body

# 3. What are the major parts of an HTTP response?

#   - Status Code / Status in English / Version of HTTP
#   - Headers
#   - Body

# 3. How do you submit an HTTP POST request, with a "username" attribute set to 
#    "bob"? What if we wanted a GET request instead?

#   - POST /url 1.1
#   - Headers
#   - "username" = "bob"

#   - GET /url?username=bob
#   - Headers

# 4. Why is it important for us, as web developers, to understand that HTTP 
#    is a "stateless" protocol?

#   - As a web developer you have to create the illusion of persistence using instance
#     variables, cookies, and databases.
#   - Each request is unique and not related to any past or future request.

# 5. If the internet is just HTTP requests/responses, why do we only use browsers 
#    to interface with web applications? Are there any other options?

#   - Because HTTP is stateless, it's super important to have standards by which
#     all websites are expected to abide by. There are other options, but browsers
#     make it easier for the internet to exist as it does.

# 6. What is MVC, and why is it important?

#   - MVC stands for Model/View/Controller. It helps us separate concerns in our
#     code and make it more modular. It also helps segment requests from renders and
#     redirects, and also separates both of these from interaction with any persistence layer.


# Sinatra

# 1. At a high level, how are requests processed?

#   - Requests are processed by going to a URL which represents an 'action'. If
#     it is a GET request, it's likely that it will end in a render. For a POST
#     request it will probably end in a redirect. GET from links. POST from forms.

# 2. In the controller/action, what's the difference between rendering and redirecting?

#   - Render renders a template. Redirecting directs to another request which is either
#     another redirect or a render. The chain will end somewhere in a render.

# 3. In the ERB view template, how do you show dynamic content?

#   - By embedding Ruby within <%= %>.

# 4. Given what you know about ERB templates, when do you suppose the ERB template 
#    is turned into HTML?

#   - The ERB template is turned into HTML when a response is returned from the 
#     server when a request is processed. Only the server-side sees ERB templates.
#     The client side never sees it. Information is sent to the server in the
#     form of a POST request and is processed by the server, then the server renders
#     an HTML template and returns it as HTML to the client.

# 5. What's the role of instance variables in Sinatra?

#   - Instance variables allow you to create decision trees within ERB templates. However,
#     this is only effective if the action which was triggered by the request ends in
#     a render.





1. What are some common HTTP status codes?
404 Not Found - the requested resource is no longer available or not found. Often caused by typos in the link or part of the aging process of a webpage.

403 Forbidden - access to the resource is forbidden. Often caused by the server maintaining a whitelist of machines that can access that system and the user's machine isn't on it. Club webpage and you aren't on the guest list.

500 Internal Server Error - it's a vague term used by programmers as a catchall. If the specific problem isn't identified then you are going to get this.

503 Service Unavailable - the web server isn't available. It could be for just about any reason (maintenence).

503 Gateway Timeout - a proxy server needs to comunicate with a secondary web server and access to the latter server timed out.

2. What is the difference between a GET request and a POST request? When might each be used?
A GET requests a representation of the specified resource and should not be used for operations that cause side-effects (actions in web applications) while POST submits data to be processed to an identified resource. The data is included in the body of the request, which could result in the creation of a new resource or the updates of existing resources or both. GET could be used by crawlers that do not need to consider the side effects the request should cause.

3. (Optional) What is a cookie? How does it relate to HTTP requests?
It is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. It's a mechanism that websites use to remember stateful information (e.g. cart items, browsing history, etc.). It essentially allows you to identify the user as well. 
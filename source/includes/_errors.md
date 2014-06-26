# Errors

The Run API uses the following error codes:


Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request is incorrect
401 | Unauthorized -- Your API key is wrong
403 | Forbidden -- The information requested is hidden for administrators only
404 | Not Found -- The specified information could not be found
405 | Method Not Allowed -- You tried to access information with an invalid method
406 | Not Acceptable -- You requested a format that isn't json
410 | Gone -- The information requested has been removed from our servers
429 | Too Many Requests -- You're requesting too much information
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintanance. Please try again later.
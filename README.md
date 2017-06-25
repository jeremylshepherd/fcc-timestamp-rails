# API Basejump: Timestamp microservice

> User stories:
> 
> #### 1) I can pass a string as a parameter, and it will check to see whether that string contains either a Unix timestamp* or a natural language date (example: January 1, 2016)
> 
> #### 2) If it does, it returns both the Unix timestamp* and the natural language form of that date.
> 
> #### 3) If it does not contain a date or Unix timestamp*, it returns null for those properties.
> 
> ##### _*In seconds, for milliseconds multiply result by 1000_

### Example usage:

`https://jeremylshepherd-timestamp-rail.herokuapp.com/date/December%2015,%202015`
`https://jeremylshepherd-timestamp-rail.herokuapp.com/date/1450137600`

### Example output:

`{ "unix": 1450137600, "natural": "December 15, 2015" }`
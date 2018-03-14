# SCUBER API
[https://anna0312.github.io/scuber/](https://anna0312.github.io/scuber/)


SCUBER is a dive logging tool, intended to give divers the ability to record their dives and view their dive history.

This is the repository for the back end API of the application

## Technologies used
Ruby, Rails, Heroku, Postgress


## Planning and Process
My original vision (as will be visible in the ERDs and wireframes) had a lot more bells an whistles, including:
A separate Locations table, which would contain the coordinates and characteristics of each dive location
A google map feature that would plot those coordinates on the map
The ability for a user to add a location to the locations table
The ability for the user to view other people's reviews of dive Locations
A stats view using Charts.js

Based on what I learned last time, and on the advice I got from our wonderful instructors, I re-evaluated
the plan so that my MVP was met first, which it has been: the ability to log dives, view dives, edit dives, and delete dives. I was disapointed not to get to include the bells and whistles, but hope to at least go back and add the Locations table so that I can practice building the many-to-many relationship.


### ERD
I would like to go back and build the locations table after the project is complete.

![Dive log ERD](https://i.imgur.com/kUMlkLl.jpg)

# Application for buy trains tickets and control them

Implemented:

* Many to many relationship;
* STI;
* nested resources;
* Authenticate through Devise;
* Separate admin and user part;
* Bootstrap;
* localization;
* Javascript and jQuery on editing stations and dynamic form for creating carriages;
* Sorting stations in the route;
* Search page for finding train tickets;
* Mailer
* heroku deploy.

User can:

* Signup, login, logout
* Search and buy train tickets indicate depart and arrival stations;
* To receive email confirming own ticket purchase
* Browse own tickets and cancel them.
* take letter with confirm

Admin can:

* Search and buy train tickets indicate depart and arrival stations;
* Browse , edit and destroy any ticket in db;
* Create , browse , edit and destroy routes , station and trains;
* To indicate type of carriages and seats quantity;
* Designate stations for routes;
* Designate routes for trains;
* To indicate date and time of departure and arrival train on the each station

# The Mix Backend
The Mix is the perfect place to find your next cocktail. Using an external api to source existing cocktails and the giving each user the ability to create their own cocktail, The Mix is the perfect spot to share and find cocktails.


## Heroku App
This app has been deployed to Heroku [here](https://the-mix.netlify.app/). You may create a new user to browse, create, favorite, or review cocktails.


## Prerequisites
The backend install steps require the following on your system
* Rails
* Postgresql


## Install Intructions
1. Clone this repository to you local machine.
2. Once cloned, navigate to the base folder of this repositry.
3. Run $ bundle install in the terminal to install required gems.
4. Run $ rails db:setup to set up the database.
5. Run $ rails s to start the rails application.

Note: The frontend software must be downloaded and running as well to see a user interface. See the frontend project [here](https://github.com/hoobie4792/the-mix-frontend).


## Features
* Users may search for cocktails by name, ingredient, or starting character
* Users may create new cocktails 
* Users may review or favorite cocktails cocktails
* Users may view list of favorited cocktails
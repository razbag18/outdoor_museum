# OUTDOOR MUSEUM

## Rediscover the city through the art of thousands of artists and their artworks
Created by ArtSnobs: Micael, Lin and Renae.

[Outdoor Museum](https://outdoor-museum.herokuapp.com/)

Configuration 
=======
Made with Ruby on Rails using Postgresql for our database.

Languages used: Ruby, Javascript and jQuery.

API's
======
* Googlemaps

* Autosuggest

* Database calls

How to use this site
====

This site allows users to search for a particular location and view all the street art uploaded by other users to our database. We have used autosuggest in the search to improve accuracy and ensure the location the user is searching for is the one they click on.

After searching, we make a call to GoogleMaps API to render a map showing results within a 7km radius of the location the user entered. If there is street art available, tabs with their exact location will be available to click, showing a popup with the uploaded image, the street name, and a link to more information on the particular art.

Clicking on a popup link takes the user to the pictures main page, where it lists the artists name, title and average rating from users. If users are logged in they can also rate the art, favourite the art to save to their dashboard, and click a checkbox to say if they've visited it themselves.

The index page is different depending on if a user is logged in or not. If logged in, artworks users are shown the searchbar, their uploaded images, and artworks they've favourited. They can also upload new art from here too.
If logged out users are allowed to search and are shown artworks saved in the database.


Extensions
===

* User click on particular location and upload image from map page.

* User uploads directly from their phone.

* Visited checkbox used usefully.

* Users can search via rating, favorites or visited.

* Site provides a route to map out a walk tour from one favourite artwork to the other.

Improvement
===

* Error validations

* Password recovery

* Email can't be doubled up


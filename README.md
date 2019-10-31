# README

Contributor @BSarahB, Toulouse 2019

Welcome to the gossip project! This application is bases on rails, and postgreSQL(for the data base) You will find there :
    The homepage will show all the created gossip
    The page presenting the team of The Gossip Project, r
    The contact page where you will swing a superb contact address
    A welcome page, which welcomes the user according to the name passed in the URL

In the home page, it will be possible to click on each gossip to "See more", which will have the effect of going to the page of gossip.


This README would normally document whatever steps are necessary to get the
application up and running.

Go in your terminal and 

to run this app, tap the command to clone it in your computer 

$ git clone https://github.com/BSarahB/the-gossip-project-postgreSQL.git

$ bundle install

$ rails db:migrate

$ rails db:seed
if any problem du to the seed, drop the data base with $ rails db:drop then $ rails db:create $ rails db:migrate $ rails db:migrate:status and rails db:seed

$ rails server

to navigate and see the renderer on your servor  http://localhost:3000/contact http://localhost:3000/team 

you can also use the gem print_table to see the renderer in your teminal of the database

Have fun!


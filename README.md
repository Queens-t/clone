# toyota-bot-api

This README would normally document whatever steps are necessary to get your application up and running.

### What is this repository for? ###

* Quick summary
* Version
* [Learn Markdown](https://bitbucket.org/tutorials/markdowndemo)

### How do I get set up? ###

* Summary of set up
* Configuration
* Dependencies
* Database configuration
* How to run tests
* Deployment instructions

### Contribution guidelines ###

* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

* Repo owner or admin
* Other community or team contact
>>>>>>> README.md created online with Bitbucket

How to run local 
=================================

##### add file #####

* .env

##### edit file #####

* server.js
    uncomment  require("dotenv").config();
* middleware.json
    change  "origin":"https://dev-toyota-profiling-bot.almondclient.com",  to  "origin":"*",
* change all text
    change url https://dev.toyotaprofiling.com in project to  url from ngrok server
* index.html   path public/html/index.html
    change liffId: urlParams.get("liffId") in to id lliffId: urlParams.get("___liffId___")

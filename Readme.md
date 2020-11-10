# PHP Challange App
> It is a challenge prepared to pass the recruitment test of the company called Teknasyon.

PHP Challange App is a REST API which allows users to get weather information via e-mail and notifications for various cities that user adds to its profile. Users can also activate gift codes for a free subscription plan.

## Tech/Framework used

Docker image based on:

Phalcon 4.1.0

webdevops/php-nginx:7.2

Authentication is based on :

firebase/php-jwt

## Getting started

This project uses Docker for it's container and you can start running it by executing :

```shell
docker-compose up -d
```
in the root directory.

When you execute this command, two containers are created. One is for php-nginx server other is for mysql database server. 
After this command is executed you can reach this api on http://localhost:8080

### Initial Configuration

You can configure server ports, mysql database name and database password through docker-compose.yml file. Make sure to make the necessary changes in application\app\config\config.php file as well. 
You can also change JWT token's key and it's expire time in application\app\config\config.php

## Features

Main function for this app is to serve some endpoints to get daily weather information for it's users.
These are the sections that you can reach via this API : 

* Register
* Login and get an authorization token
* Update profile
* Get city list
* Adding cities to profile 
* Removing cities from profile
* Activating gift codes

API responses are in application/json format. 

You can reach to the API documentation here https://documenter.getpostman.com/view/13394179/TVeiDBAp#phpchallenge-api-collection

## Licensing

This project is licensed under Unlicense license. This license does not require you to take the license with you to your project.
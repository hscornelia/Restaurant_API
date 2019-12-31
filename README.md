# Restaurant_API

### Local Environment Setting

- need to install pg in gem
<b> We Will Use Postgresql for Database</b>
> Note : https://wikimatze.de/installing-postgresql-gem-under-ubuntu-and-mac/

- need to create database name "restaurant_api_development"
> check database.yml file 

### Guide for Development

- for tutorials & guide urls, check README in restaurant-api/README.md

#### When Adding the Controllers
- please follow the steps below.

1. Scaffolding

> rails g scaffold Article title:string, content:text, slug:string
> rails db:migrate

2. Move the controller to api version folder

> mv app/controllers/articles_controller.rb app/controllers/api/v1

3. Update Contoller

> in articles_controller.rb, change
> class ArticlesController -> class Api::V1::ArticlesController

4. Update Route Files

> open config/routes.rb and changes like below
> resources :articles
> namespace :api do
>   namespace :v1 do
>    resources :articles
>   end
> end

### API Table

- version controller added (current version : v1)

url : http://localhost:3000/api/v1

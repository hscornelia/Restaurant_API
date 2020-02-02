# Restaurant_API

### Local Environment Setting

로컬 개발환경에서 API를 테스트하기 위해서는 다음과 같은 단계를 거쳐야 합니다.
1. Ruby on rails 설치

    - rails 서버를 사용해야 하므로, Ruby on rails가 설치되어 있어야 합니다.
    - Ruby on rails install 을 검색해서 최신 버전을 다운받으시면 됩니다.
    - 다운 받은 후에는 restarant_api 디렉토리 내에서 
        ``` 
        bundle install
        ```
        command를 입력하여 dependency를 설치해 줍니다. (npm install 과 비슷함)

2. Postgresql Database 설치

    - Postgresql database를 설치해 줍니다.
    - "restaurant_api_development"라는 이름으로 database를 만들어 줍니다.

3. DB seed file dump (당분간) 

    - 크롤러가 아직 api 디렉토리에 추가되어 있지 않으므로 db_seed.sql 파일을 제공합니다.
    - 해당 파일을 덤프해 줍니다.

4. migrate + run server

    - rails db:migrate 를 통해 데이터베이스 마이그레이셔을 해줍니다.
    - rails s 명령어로 서버를 실행해 줍니다.

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


## REST API Specification

| URL        | method   | request                           | response     | description            |
| ---------- | -------- | --------------------------------- | ------------ | ---------------------- |
| /restaurants    | `GET`    | .                                 | list of restaurants | Get list of all restaurants     |
| /categories    | `GET`    | .                                 | list of categories | Get list of all categories     |
| /pricerange    | `GET`    | .                                 | list of price range | Get list of all price range     |
| /location    | `GET`    | .                                 | list of price range | Get list of all location     |

> HttpError code는 convention과 같습니다.

# rating-web

Web app for CI/CD demo with Brigade.

### background

This repo is used in conjunction with some other repos: 

https://github.com/chzbrgr71/rating-api 

https://github.com/chzbrgr71/rating-db

https://github.com/chzbrgr71/rating-charts 

### build image

`docker build --build-arg IMAGE_TAG_REF=tag -t repo/rating-web:tag .`

### deploy via helm chart

`helm upgrade --install --reuse-values rating-web ./rating-web --set web.image=repo/rating-web --set web.imageTag=tag`

> Note: you will also need to deploy the api and import data into mongoDB or Azure CosmosDB.
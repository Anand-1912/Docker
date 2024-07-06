### Commands

1. to build the image - `docker build -t mynodegreeter:1 .`

2. to create containers -

   `docker container create --name greetapp1 mynodegreeter:1`
   `docker container create --name greetapp2 mynodegreeter:1 app.js`

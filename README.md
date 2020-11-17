## Steps for testing the test project with Docker

I highly recommend to test it without docker, it takes so much time to make a simple consult and it could be a bit annoying

This is the link for the Git repository of where the front-end and back-end of the project is located: https://github.com/cfmorales/scopic_test_docker

- The folder 'vendor' also uploaded in the Laravel project so you may want to zip this folder before you download it
- or
- In your console, use this command to clone the Git repository:
  - git clone https://github.com/cfmorales/scopic_test_docker
- The Api documentation is in this link https://web.postman.co/collections/13067023-fd88b890-8b99-420b-994d-a3cff9f5c98d?version=latest&workspace=d575ba5f-5af7-4b7b-8d2c-cc85f9ce9af2
## Setup docker for the Back End

- Open a console in the directory of where the backend code is located: ./web-auction-back
- Write the command docker-compose up -d --build site
- After running the process type docker-compose run --rm composer i
- Then docker-compose run --rm artisan migrate:fresh --seed
- The server must be running at this point, if you have error related to file permission, type
  - docker-compose run php chgrp -R www-data /var/www/html/storage /var/www/html/bootstrap/cache
  - docker-compose run php chmod -R ug+rwx /var/www/html/storage /var/www/html/bootstrap/cache
- I'm using a cron job to check what auctions are about to expire, so it will send an email, to enable this, type the command docker-compose up -d cron
- The server is running in the url http://localhost:8088/

## Setup docker for the Front End

- Open a console in the directory of where the backend code is located: ./web-auction-front
- Write the command docker build -t web-front .
- Then type docker run -p 8089:80 web-front
- The front end must be running in the url http://localhost:8089/
- Keep in mind the url of the back end, if you change it, you have to change the enviroment variable located at ./ web-auction-front/src/environments/enviroment.ts with the new url
## Steps for testing the test project without Docker

This is the link for the Git repository of where the front-end and back-end of the project is located: https://github.com/cfmorales/scopic_test

- In your console, use this command to clone the Git repository: 
   - git clone https://github.com/cfmorales/scopic_test 


## Setup and configure the Back End (requirements and steps)

- PHP >= 7.3
- Have Composer installed
- Have MySQL installed
- Create a database for the project
- Open a console in the directory of where the backend code is located: ./web-auction-back
- In the console write the command: composer install
- After running the processes, you have to configure the .env file that is located within the ./web-auction-back directory.
    - Change the name of the database DB_DATABASE for the one you created, and change the username and password, DB_USERNAME, DB_PASSWORD
- In the console write the command: php artisan migrate --seed
- After running the previous command, write a new command: php artisan serve
- Take into account that after using the previous command we have configured a virtual server that uses by default this URL: http://127.0.0.1:8000 if you use another type of virtual host, then you have to change the URL in the front end code.
- Do not close this console
- As we are not using a cron job, we have to type the command php artisan items:date to check if an auction is expired and to send an email to the winner

## Setup and configure the Front End virtual server (requirements and steps)

- Have Node v12.18.1 installed 
- Have npm v6.14.5 installed
- Open a console in the directory of where the frontend code is located: ./web-auction-front
- In the console, write the command: npm install
- If the URL of your virtual server is different than http://127.0.0.1:8000 , change it in one of the application’s variables
  - Go to the directory: ./web-auction-front/src/environments/enviroment.ts
  - Change the apiUrl to yours
  - Take into account the final slash ”/”, http://127.0.0.1:8000/, this has to be part of the URL
- In the console, write the command: npm run start
  - If this does not work run in the console npm install -g @angular/cli 
  - After the previous command run ng serve --open
- After the previous command, the virtual host for the front end will be configured. Go to URL http://localhost:4200/ , this will be the URL where we can test the application
- Do not close this console
## Application

 - CREDENTIALS:
    - ADMIN: admin/admin
    - USER: user/user 
 -	There is a TXT file in which different image URLs are found that should be used for testing the app.

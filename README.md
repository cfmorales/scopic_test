## Steps for testing the test project

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
 - After the previous command, the virtual host for the front end will be configured. Go to URL http://localhost:4200/ , this will be the URL where we can test the application

## Application

 - CREDENTIALS:
    - ADMIN: admin/admin
    - USER: user/user 
 -	There is a TXT file in which different image URLs are found that should be used for testing the app.

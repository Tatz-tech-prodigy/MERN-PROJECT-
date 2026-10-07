# MERN

This is a simple NodeJS + Express + React + MongoDB application. This application serves as a basic template for a mern applications.

What does this application do?
-------------------------------
This application serves a simple MERN based TODO application to demonstrate the use of MERN stack. This application uses following technologies:
- MongoDB: used as database
- Express: used as web application framework
- React: used as frontend framework to build UI
- NodeJS: used as backend server


## How to run

Before running the application, make sure all dependencies are installed.

1. Install server and client dependencies from the project root:
   > `npm install`
   >
   > `npm --prefix client install`

2. Copy `.env.example` to `.env` and set `MONGO_DB_URI` to your MongoDB connection string. Keep `.env` private; it is excluded from Git and Docker build context.

3. Start both server and client:
   > `npm run dev`

4. Open the URL shown by Vite in your browser.

## Docker

Build the production image from the project root:

> `docker build -t mern-app .`

Run it with a local `.env` file containing your MongoDB connection string:

> `docker run --rm --env-file .env -p 5000:5000 mern-app`

The image contains the production server and built client, but not `.env` or other environment files. Supply configuration at runtime.



## FAQs & Debugging

### 1. Node server failing to connect to Database

   Ensure `MONGO_DB_URI` is set in your private `.env` file or the environment where the server runs. A connection string typically looks like:
> `mongodb://<USERNAME>:<PASSWORD>@<HOST>:<PORT>/<DATABASE_NAME>`

### 2. Can I start server and client separately?
   `npm run dev` starts both server and client. If you want to start them separately, you can use following commands:
   - `npm run server`: to start server
   - `npm run client`: to start client

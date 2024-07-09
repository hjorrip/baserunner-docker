# Baserunner Dockerized
This repository contains a Dockerfile for easily running the Baserunner application in a containerized environment.

## Prerequisites
Docker: Make sure you have Docker installed on your system.
## Usage
Clone the Repository:
```bash
git clone https://github.com/<your_username>/baserunner.git
```

## Build the Docker Image:
```bash
cd baserunner
docker build -t baserunner-app .
```

## Run the Container (Interactive Mode):
```bash
docker run -it --rm -p 3000:3000 baserunner-app 
```

This will start the application and show logs directly in your terminal.
Press Ctrl+C to stop the container.

## Access the Application:
Open your web browser and navigate to http://localhost:3000



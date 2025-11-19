# Development Guide

## 📍 Git and GitHub Guidelines
For easier solo maintenance, the git workflow has been simplified to use only the `main`  + `feature/*` branches.
> [!NOTE]
> For historical reference, you can view the original workflow used during the course and its Git guidelines (branching, PR process, commit conventions, etc.) here:
>
> **TEAM07 Archive Repo** 
> https://github.com/aryahassibi/TEAM07/blob/develop/docs/Git_Guide.md


## 📍 Environment Setup

#### 1. Install Prerequisites
Make sure you have **Docker** installed. You can download and install Docker Desktop from [here](https://www.docker.com/products/docker-desktop).


#### 2. Clone the Project Repository
```bash
git clone https://github.com/aryahassibi/Compresso-Store
cd Compresso-Store
```
#### 3. Create Environment Variables
Add a `.env` file in the project root to manage sensitive data:
```
PORT=5000
DB_HOST=db
DB_USER=root
DB_PASS=
DB_NAME=ecommerce_db
JWT_SECRET=JWTSECRET
```
The `DB_PASS` field should be left empty since for now during the development phase, the database is modified to accept empty passwords.

> [!CAUTION]
> Use **environment variables** (like the '.env' file) for sensitive data. Never hard-code passwords, tokens, or keys in the code.


## 📍 Running the Project with Docker
#### 1. Check Docker Installation
```bash
docker --version
```

#### 2. Run the Project in Docker
Start all services (backend, frontend, database) with:
```bash
docker-compose up --build
```
The first time you run this command you might get an error and your may able ot resolve it easirly by stopping the application (press `Ctrl+C` in the terminal) and running the command again. 
**Access Services**:
    - **Frontend**: [http://localhost:3000](http://localhost:3000)
    - **Backend**: [http://localhost:5001](http://localhost:5001)

#### 3. Stopping and Removing Docker Containers
To stop the running containers, press `Ctrl+C` in the terminal, then run:
```bash
docker-compose down
```
This will stop and remove the containers. However, the data will persist in the database volume. If you want to remove the data as well, run:
```bash
docker-compose down -v
```
This command stops and removes the containers and associated volumes, effectively resetting the database and other persistent data.
> [!TIP]
> These commands can also be used to resolve Docker errors by ensuring a clean state before restarting the services.



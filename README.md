# 📝 Django Notes Application - DevOps Deployment

![Python](https://img.shields.io/badge/Python-3.12-blue)
![Django](https://img.shields.io/badge/Django-5.x-green)
![Docker](https://img.shields.io/badge/Docker-Containerized-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.4-orange)
![Nginx](https://img.shields.io/badge/Nginx-Reverse%20Proxy-success)
![AWS](https://img.shields.io/badge/AWS-EC2-orange)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

A production-ready **Django Notes Application** deployed using **Docker**, **Docker Compose**, **MySQL**, **Nginx**, and **AWS EC2**.

This project demonstrates how to containerize a Django application, configure a reverse proxy, manage multiple services using Docker Compose, and deploy the complete stack on an AWS EC2 instance.

---

# 🚀 Features

- User Authentication
- Create Notes
- Update Notes
- Delete Notes
- Responsive UI
- MySQL Database
- Dockerized Application
- Nginx Reverse Proxy
- AWS EC2 Deployment
- Production-ready Docker Compose Setup

---

# 🏗️ Project Architecture

```
                Internet
                    │
                    ▼
              ┌────────────┐
              │   Nginx    │
              │Reverse Proxy│
              └─────┬──────┘
                    │
                    ▼
             Django Application
                    │
                    ▼
              MySQL Database
```

---

# 📁 Project Structure

```
django-notes-application/
│
├── backend/
│   ├── api/
│   ├── notesapp/
│   ├── templates/
│   ├── static/
│   ├── manage.py
│   └── requirements.txt
│
├── nginx/
│   ├── Dockerfile
│   └── default.conf
│
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── README.md
└── screenshots/
```

---

# 🛠️ Tech Stack

- Python 3.12
- Django
- MySQL 8.4
- Docker
- Docker Compose
- Nginx
- AWS EC2
- Git
- GitHub

---

# 🐳 Docker Containers

The application consists of three containers:

| Container | Purpose |
|------------|----------|
| Django | Backend Application |
| MySQL | Database |
| Nginx | Reverse Proxy |

---

# ⚙️ Prerequisites

Before running the project, install:

- Git
- Docker Desktop (Windows/macOS)

or

- Docker Engine
- Docker Compose

For deployment:

- AWS EC2 Ubuntu Instance
- Docker
- Docker Compose Plugin

---

# 💻 Run Locally

## 1. Clone Repository

```bash
git clone https://github.com/SumitRaj511/django-notes-application.git
```

---

## 2. Go to Project Folder

```bash
cd django-notes-application
```

---

## 3. Build Containers

```bash
docker compose up --build -d
```

---

## 4. Check Running Containers

```bash
docker ps
```

Expected containers:

```
nginx_cont
django_cont
db_cont
```

---

## 5. View Logs

Django

```bash
docker logs django_cont
```

MySQL

```bash
docker logs db_cont
```

Nginx

```bash
docker logs nginx_cont
```

---

## 6. Stop Containers

```bash
docker compose down
```

---

## 7. Restart

```bash
docker compose up -d
```

---

# ☁️ AWS EC2 Deployment

## Launch EC2

- Ubuntu 22.04 LTS
- t2.micro
- Open Security Group Ports

| Port | Purpose |
|-------|----------|
|22|SSH|
|80|HTTP|
|443|HTTPS (Optional)|

---

## Connect to EC2

```bash
ssh -i key.pem ubuntu@EC2_PUBLIC_IP
```

---

## Install Docker

```bash
sudo apt update

sudo apt install docker.io -y

sudo systemctl enable docker

sudo systemctl start docker

sudo usermod -aG docker ubuntu

newgrp docker
```

---

## Install Docker Compose

```bash
sudo apt install docker-compose-v2 -y
```

Verify

```bash
docker compose version
```

---

## Clone Repository

```bash
git clone https://github.com/SumitRaj511/django-notes-application.git
```

---

## Navigate

```bash
cd django-notes-application
```

---

## Build

```bash
docker compose up --build -d
```

---

## Verify

```bash
docker ps
```

---

## Open Browser

```
http://YOUR_PUBLIC_IP
```

---

# 🔄 Useful Docker Commands

Build

```bash
docker compose build
```

Start

```bash
docker compose up -d
```

Stop

```bash
docker compose down
```

Restart

```bash
docker compose restart
```

View Logs

```bash
docker compose logs
```

View Running Containers

```bash
docker ps
```

Enter Django Container

```bash
docker exec -it django_cont bash
```

Run Migrations

```bash
python manage.py migrate
```

Create Superuser

```bash
python manage.py createsuperuser
```

---

# 📸 Screenshots

Create a folder:

```
screenshots/
```

Add images like:

```
screenshots/
├── home.png
├── login.png
├── dashboard.png
├── docker-ps.png
├── docker-compose.png
├── ec2-terminal.png
├── aws-instance.png
├── nginx-container.png
├── mysql-container.png
└── architecture.png
```

Then display them:

## Application Running

<img src="screenshots\application.png" width="900">

---

## Login Page

<img src="screenshots/login.png" width="900">

---

## Dashboard

<img src="screenshots/dashboard.png" width="900">

---

## Docker Containers

<img src="screenshots/docker-ps.png" width="900">

---

## Docker Compose Running

<img src="screenshots/docker-compose.png" width="900">

---

## EC2 Deployment

<img src="screenshots/ec2-terminal.png" width="900">

---

## AWS EC2 Instance

<img src="screenshots/aws-instance.png" width="900">

---

# 🔒 Production Highlights

- Dockerized Django Application
- Nginx Reverse Proxy
- MySQL Persistent Database
- Multi-container Architecture
- AWS EC2 Deployment
- Docker Compose Orchestration
- Isolated Network
- Easy Deployment
- Easy Scaling

---

# 📈 Future Improvements

- HTTPS with Let's Encrypt
- GitHub Actions CI/CD
- Kubernetes Deployment
- AWS ECS
- Monitoring using Prometheus & Grafana
- Centralized Logging
- Docker Secrets
- Environment-specific Configurations

---

# 👨‍💻 Author

**Sumit Raj**

GitHub:
https://github.com/SumitRaj511

LinkedIn:
https://linkedin.com/in/sumitraj511

---

# ⭐ If you found this project helpful, consider giving it a Star.

# 📋 Task Manager — Full DevOps Pipeline Demo

A 3-tier Task Manager web application built to demonstrate a complete, production-style DevOps workflow: containerization, service orchestration, and CI/CD automation.

## 🏗️ Architecture

```
┌─────────────┐      ┌─────────────┐      ┌──────────────┐
│  Frontend   │ ───► │   Backend   │ ───► │  PostgreSQL  │
│  (Nginx)    │      │  (Node.js)  │      │  (Database)  │
└─────────────┘      └─────────────┘      └──────────────┘
       │                    │                     │
       └────────────────────┴─────────────────────┘
                 docker-compose (orchestration)
                            │
                            ▼
                    GitHub Actions (CI/CD)
                            │
                            ▼
                       Docker Hub
```

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Frontend | HTML, CSS, JavaScript, served via Nginx |
| Backend | Node.js, Express.js (REST API) |
| Database | PostgreSQL |
| Containerization | Docker, Docker Compose |
| CI/CD | GitHub Actions |
| Registry | Docker Hub |

## ⚡ Quick Start

Requires only [Docker Desktop](https://www.docker.com/products/docker-desktop/) — nothing else to install.

```bash
git clone https://github.com/YOUR_USERNAME/task-manager-devops.git
cd task-manager-devops
docker compose up --build
```

Open: **http://localhost:8080**

## 🔄 CI/CD Pipeline

Every push to `main` triggers GitHub Actions to:
1. Build the backend Docker image
2. Build the frontend Docker image
3. Push both images to Docker Hub automatically

This means the latest version is always available as a ready-to-run image — no manual building required.

## 📡 API Endpoints

| Method | Endpoint | Description |
|---|---|---|
| GET | `/api/tasks` | Get all tasks |
| POST | `/api/tasks` | Create a new task |
| PUT | `/api/tasks/:id` | Update task (toggle complete) |
| DELETE | `/api/tasks/:id` | Delete a task |
| GET | `/health` | Backend health check |

## 📂 Project Structure

```
task-manager-devops/
├── .github/workflows/docker.yml   # CI/CD pipeline
├── backend/
│   ├── server.js                  # Express API
│   ├── package.json
│   └── Dockerfile
├── frontend/
│   ├── index.html, style.css, script.js
│   ├── nginx.conf                 # Reverse proxy to backend
│   └── Dockerfile
├── db/
│   └── init.sql                   # Database schema + seed data
├── docker-compose.yml             # Orchestrates all 3 services
└── README.md
```

## 🎯 What This Project Demonstrates

- Designing and containerizing a multi-service application
- Service orchestration with Docker Compose (networking, health checks, volumes)
- Writing a CI/CD pipeline with GitHub Actions
- Automated Docker image builds and registry publishing
- RESTful API design with a persistent database layer

## 👤 Author

**Your Name** — [LinkedIn](#) | [GitHub](#)

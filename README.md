
# 📝 Django RESTful Task Management System

A simple and efficient **Task Management System** built with **Django** and **Django REST Framework** 🧩  
Supports full CRUD operations for TODO tasks with sorting, searching, and filtering functionalities 🔍

---

## 🚀 Features

- ✅ Add a task with `title`, `description`, and `date`
- 📋 List all tasks
  - 🗂️ Sort tasks by date
  - 🔎 Search tasks by date
  - 🔍 Search tasks by title
- ✏️ Edit a task
- ❌ Delete a task
- 🧪 Tested using Postman
- 🐳 Dockerized application for easy deployment

---

## 🛠 Tech Stack

- 🌐 Django
- 🔄 Django REST Framework
- 🐘 PostgreSQL / SQLite
- 📦 Docker, Docker Compose
- 🧪 Postman (for testing)

---

## 📂 Endpoints

| Method | Endpoint             | Description                      |
|--------|----------------------|----------------------------------|
| POST   | `/tasks/`            | Create a new task                |
| GET    | `/tasks/`            | List all tasks                   |
| GET    | `/tasks/?sort_by_date=true` | Sort tasks by date         |
| GET    | `/tasks/?search_date=YYYY-MM-DD` | Filter by date      |
| GET    | `/tasks/?search=title` | Search tasks by title       |
| PATCH  | `/tasks/{id}/`       | Edit a task                      |
| DELETE | `/tasks/{id}/`       | Delete a task                    |

---

## 🧰 Installation & Setup

### ⚙️ Clone the Repository

```bash
git clone https://gitlab.com/your-username/django-tasks-assignment.git
cd django-tasks-assignment
````

### 🐳 Run with Docker

```bash
docker-compose up --build
```

### 🖥️ Run Locally (without Docker)

```bash
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

---

## 🧪 Testing the API

You can use **Postman** or **curl** to test API endpoints.

📦 Import the Postman collection provided (or create your own based on the endpoints).

---

## 📁 Project Structure

```bash
├── task_project/
│   ├── settings.py
│   └── urls.py
├── tasks/
│   ├── models.py
│   ├── views.py
│   ├── serializers.py
│   └── urls.py
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── README.md
```

---

## 📜 Documentation

* `models.py` — Defines the `Task` model with title, description, and date
* `serializers.py` — Serializes Task data to/from JSON
* `views.py` — Contains logic for CRUD operations and filters
* `urls.py` — Maps routes to views

---

## 🧠 Design Principles Followed

* 🔁 RESTful API Design
* ⚙️ SOLID Principles (where applicable)
* 📦 Modular structure
* ✅ Unit & Integration Testing (if implemented)

---

## 🤝 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.

---

## 📃 License

This project is open source and available under the [MIT License](LICENSE).

---

## 🙌 Acknowledgements

* Django & DRF Docs 📚
* Postman Team 🧪
* Docker Community 🐳

---

# Sharesphere
A Python + MySQL console application for sharing skills, food, and local help with neighbours.
# 🏘️ CommunityHub

CommunityHub is a simple Python + MySQL console-based community sharing application.

The project allows people to connect with their neighbours by sharing and finding skills, food, and local help. Users can register, login, send requests, manage connections, and update their profiles.

## 📌 Project Overview

CommunityHub provides three main community services:

- 🔄 SkillSwap
- 🍱 FoodShare
- 🤝 LocalHelper

Users can find available services, send requests, and create connections after a request is accepted.

The application also provides a separate admin login for managing users, posts, requests, and reports.

## ✨ Features

### 👤 User Features

- User registration
- User login
- User dashboard
- SkillSwap
- FoodShare
- LocalHelper
- Send requests
- Accept or reject requests
- View sent and received requests
- View accepted connections
- Edit profile
- Change password
- Mobile number remains hidden until a request is accepted

### 🔄 SkillSwap

Users can share their skills and find skills offered by other users.

Users can:

- Find skills
- View available skills
- Select a skill
- View skill details
- Send a request

### 🍱 FoodShare

Users can share food with other people in the community.

Users can:

- Find available food
- Share food

### 🤝 LocalHelper

Users can find or offer local help.

Users can:

- Find available help
- Offer help

### 📩 Request Management

Users can manage their requests.

The system supports:

- Sent requests
- Received requests
- Accept requests
- Reject requests
- Connection creation after acceptance

Mobile numbers remain hidden until the request is accepted.

### 👨‍💼 Admin Features

Admin has a separate login and dashboard.

Admin can:

- Manage users
- Manage SkillSwap posts
- Manage FoodShare posts
- Manage LocalHelper posts
- Manage requests
- View connections
- View reports

## 🛠️ Technologies Used

- **Python**
- **MySQL**
- **mysql-connector-python**

## 🗄️ Database

MySQL is used as the database for storing application data.

The project connects to a MySQL database named:

```text
communityhub

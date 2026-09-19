-- CommunityHub database
-- run this file first in MySQL before running the python app

CREATE DATABASE IF NOT EXISTS communityhub;
USE communityhub;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mobile VARCHAR(15) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    salt VARCHAR(64) NOT NULL,
    location VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE admin (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    salt VARCHAR(64) NOT NULL
);

-- default login -> admin / admin123
-- password is stored as salted pbkdf2 hash, not plain sha256 anymore
INSERT INTO admin (username, password, salt)
VALUES ('admin', '95ea4b7a40d95940de15c2eae306ef147e101225113f52780b6973120e3b1b68', '8379ec670543c4b9e6f48e5f42ebde38');

CREATE TABLE skills (
    skill_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    skill_name VARCHAR(100),
    description TEXT,
    status VARCHAR(20) DEFAULT 'Available',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE food_items (
    food_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    food_name VARCHAR(100),
    quantity VARCHAR(50),
    description TEXT,
    status VARCHAR(20) DEFAULT 'Available',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE help_items (
    help_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    help_type VARCHAR(100),
    description TEXT,
    status VARCHAR(20) DEFAULT 'Available',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE requests (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    sender_id INT,
    receiver_id INT,
    service_type VARCHAR(20),
    item_id INT,
    status VARCHAR(20) DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES users(user_id),
    FOREIGN KEY (receiver_id) REFERENCES users(user_id)
);

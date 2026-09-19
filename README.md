# CommunityHub - Console Project

A simple python + mysql console project for sharing skills, food and help with neighbours.

## What it does
- User can register and login
- Admin can login separately
- Users can post/find Skills, Food, Help
- Users can send requests and accept/reject them
- Mobile number is hidden until request is accepted
- Users can edit profile and change password
- Admin can manage users, posts, requests and see reports

## How to run
1. Open MySQL and run schema.sql:
   mysql -u root -p < schema.sql

2. Open db.py and put your own mysql password

3. Install the library:
   pip install -r requirements.txt

4. Run the app:
   python main.py

## Admin login
username: admin
password: admin123

## Files
- main.py - starting point of the project
- db.py - mysql connection
- schema.sql - database tables
- modules/helper.py - common functions (hashing, validation, screen clear)
- modules/auth.py - registration and login
- modules/skillswap.py, foodshare.py, localhelper.py - the 3 main services
- modules/myrequests.py - sent and received requests
- modules/connections.py - accepted connections
- modules/profile.py - edit profile / change password
- modules/admin.py - admin dashboard

## Security
- Passwords are never stored as plain text. Each user gets a random salt, and the password is hashed with PBKDF2 (100000 rounds) before saving. Same password = different stored hash for every user
- All database queries use parameterized placeholders (%s), so user input can't break out of the query and run extra SQL
- Mobile numbers stay hidden in Connections until a request is Accepted

## Known limitations
- No cascade delete, so deleting a user with existing posts will show an error instead of force deleting

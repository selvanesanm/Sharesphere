# db.py
# this file just connects to mysql database
# change the password below to your own mysql password

import mysql.connector

def connect_db():
    conn = mysql.connector.connect(
        host="localhost",
        user="root",
        password="root",
        database="communityhub"
    )
    # print("db connected")   # used this for testing, not needed now
    return conn

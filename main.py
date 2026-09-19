# main.py
# CommunityHub - console project
# run this file to start the app: python main.py
# make sure schema.sql is already run in mysql

from db import connect_db
from modules.helper import clear, line, wait
from modules.auth import register_user, login_user, login_admin
from modules.skillswap import skillswap_menu
from modules.foodshare import foodshare_menu
from modules.localhelper import localhelper_menu
from modules.myrequests import requests_menu
from modules.connections import connections_menu
from modules.profile import profile_menu
from modules.admin import admin_menu


def user_dashboard(conn, user):
    while True:
        clear()
        line()
        print("USER DASHBOARD")
        line()
        print("1. SkillSwap")
        print("2. FoodShare")
        print("3. LocalHelper")
        print("4. My Requests")
        print("5. My Connections")
        print("6. My Profile")
        print("7. Logout")
        choice = input("Choose: ")

        if choice == "1":
            skillswap_menu(conn, user)
        elif choice == "2":
            foodshare_menu(conn, user)
        elif choice == "3":
            localhelper_menu(conn, user)
        elif choice == "4":
            requests_menu(conn, user)
        elif choice == "5":
            connections_menu(conn, user)
        elif choice == "6":
            profile_menu(conn, user)
        elif choice == "7":
            print("\nLogged out")
            wait()
            break
        else:
            print("Invalid choice")
            wait()


def main():
    conn = connect_db()

    while True:
        clear()
        line()
        print("COMMUNITYHUB")
        line()
        print("1. User Registration")
        print("2. User Login")
        print("3. Admin Login")
        print("4. Exit")
        choice = input("Choose: ")

        if choice == "1":
            register_user(conn)
        elif choice == "2":
            user = login_user(conn)
            if user:
                user_dashboard(conn, user)
        elif choice == "3":
            admin = login_admin(conn)
            if admin:
                admin_menu(conn)
        elif choice == "4":
            print("\nThank you, Goodbye!")
            conn.close()
            break
        else:
            print("Invalid choice")
            wait()


main()

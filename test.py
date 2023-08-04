from datetime import datetime

# Get the current date and time
current_datetime = datetime.now()

# Extract the year from the current date
current_year = current_datetime.year

A = input("Enter your Birth Year: ")
Age = current_year - int(A)

print("Your Age is :", Age)

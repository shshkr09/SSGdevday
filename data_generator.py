#the script generates data using ra
import random 
import string 
from faker import Faker
from datetime import datetime
cust_ids = list(range(1,999))
loan_amount = list(range(1000, 100000))

def generate_message() -> dict:
    random_cust_id = random.choice(cust_ids)
    random_loan_amount = random.choice(loan_amount)
    # Generate a random message
    loan_id = ''.join(random.choice(string.ascii_letters) for i in range(32))
    fake = Faker()
    fname=fake.first_name()
    lname=fake.last_name()
    country=fake.country()
    phone = fake.phone_number()
    return {
        'cust_ids': random_cust_id,
        'loan_amount': random_loan_amount,
        'loan_id': loan_id,
        'first_name': fname,
        'last_name': lname,
        'country': country,
        'phone' : phone
    }

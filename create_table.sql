create table loanrequest (cust_ids int,loan_amount int,loan_id TEXT,first_name VARCHAR(20),last_name VARCHAR(20),country VARCHAR(50),phone TEXT);
create table loan_disburse(cust_ids int,loan_id TEXT,loan_amount int , monthly_inst int, PRIMARY KEY(cust_ids,loan_id))

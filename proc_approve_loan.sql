# Modify the ip address with you kafka server IP
#SELECT TO_JSON(loan_disburse.*) FROM loan_disburse where cust_ids=cid AND loan_id=lid INTO KAFKA '44.77.302.01:9092/disbursement';
#
use appws;
DELIMITER //
CREATE OR REPLACE PROCEDURE approve_loan(cid int,lid TEXT) AS
BEGIN
INSERT INTO loan_disburse(cust_ids,loan_id,loan_amount,monthly_inst) 
SELECT cust_ids,loan_id,loan_amount,((loan_amount*1.17)/12) from loanrequest where cust_ids=cid AND lid=loan_id  ;
SELECT TO_JSON(loan_disburse.*) FROM loan_disburse where cust_ids=cid AND loan_id=lid INTO KAFKA '<Ip address of kafka>:9092/disbursement';
END //
DELIMITER ;

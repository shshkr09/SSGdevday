DELIMITER //
CREATE OR REPLACE PROCEDURE approve_loan(cid int,lid TEXT) AS
BEGIN
INSERT INTO loan_disburse(cust_ids,loan_id,loan_amount,monthly_inst) 
SELECT cust_ids,loan_id,loan_amount,((loan_amount*1.17)/12) from loanrequest where cust_ids=cid AND lid=loan_id  ;
SELECT TO_JSON(loan_disburse.*) FROM loan_disburse where cust_ids=145 AND loan_id='GMBPXGhjscTkxrrbVsqNcaHrEEtSeApg' 
INTO KAFKA '44.204.84.174/disbursement';
END //
DELIMITER ;

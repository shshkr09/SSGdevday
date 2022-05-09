DELIMITER //
CREATE OR REPLACE PROCEDURE proc_loanreq(GENERIC_BATCH query(GENERIC_JSON json)) AS
BEGIN
INSERT INTO loanrequest(cust_ids,loan_amount,loan_id,first_name,last_name,country,phone)
SELECT GENERIC_JSON::cust_ids,GENERIC_JSON::loan_amount,GENERIC_JSON::$loan_id,GENERIC_JSON::$first_name,GENERIC_JSON::$last_name,GENERIC_JSON::$country,GENERIC_JSON::$phone
FROM GENERIC_BATCH;
END //
DELIMITER ;

# Modify the ip address with you kafka server IP
#SELECT TO_JSON(loan_disburse.*) FROM loan_disburse where cust_ids=cid AND loan_id=lid INTO KAFKA '44.77.302.01:9092/disbursement';
#
use appws;
CREATE PIPELINE kaf_loanreq
AS LOAD DATA KAFKA '<Ip address of kafk>:9092/loan_request'
INTO procedure proc_loanreq (GENERIC_JSON <- %) format json;

CREATE PIPELINE kaf_loanreq
AS LOAD DATA KAFKA '44.204.84.174:9092/loan_request'
INTO procedure proc_loanreq (GENERIC_JSON <- %) format json;

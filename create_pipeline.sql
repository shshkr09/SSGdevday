use appws;
CREATE PIPELINE kaf_loanreq
AS LOAD DATA KAFKA '34.142.224.186:9092/loan_request'
INTO procedure proc_loanreq (GENERIC_JSON <- %) format json;

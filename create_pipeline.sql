use appws;
CREATE PIPELINE kaf_loanreq
AS LOAD DATA KAFKA '<Ip address of kafk>:9092/loan_request'
INTO procedure proc_loanreq (GENERIC_JSON <- %) format json;

CREATE TABLE credit_risk (
    person_age INTEGER,
    person_income BIGINT,
    person_home_ownership VARCHAR(20),
    person_emp_length NUMERIC,
    loan_intent VARCHAR(30),
    loan_grade VARCHAR(5),
    loan_amnt INTEGER,
    loan_int_rate NUMERIC(5,2),
    loan_status INTEGER,
    loan_percent_income NUMERIC(5,2),
    cb_person_default_on_file VARCHAR(5),
    cb_person_cred_hist_length INTEGER,
    income_group VARCHAR(20),
    loan_income_group VARCHAR(20),
    risk_segment VARCHAR(20)
);

SELECT COUNT(*) 
FROM public.credit_risk;

SELECT *
FROM public.credit_risk
LIMIT 10;

SELECT risk_segment, 
       COUNT(*) AS borrower_count
FROM public.credit_risk
GROUP BY risk_segment
ORDER BY borrower_count DESC;

SELECT 
    risk_segment,
    COUNT(*) AS total_borrowers,
    SUM(loan_status) AS defaults,
    ROUND(100.0 * SUM(loan_status) / COUNT(*), 2) AS default_rate
FROM public.credit_risk
GROUP BY risk_segment
ORDER BY default_rate DESC;

SELECT 
    income_group,
    COUNT(*) AS total_borrowers,
    SUM(loan_status) AS defaults,
    ROUND(100.0 * SUM(loan_status) / COUNT(*), 2) AS default_rate
FROM public.credit_risk
GROUP BY income_group
ORDER BY default_rate DESC;

SELECT 
    loan_intent,
    COUNT(*) AS total_borrowers,
    SUM(loan_status) AS defaults,
    ROUND(100.0 * SUM(loan_status) / COUNT(*), 2) AS default_rate
FROM public.credit_risk
GROUP BY loan_intent
ORDER BY default_rate DESC;

SELECT 
    loan_grade,
    COUNT(*) AS total_borrowers,
    SUM(loan_status) AS defaults,
    ROUND(100.0 * SUM(loan_status) / COUNT(*), 2) AS default_rate
FROM public.credit_risk
GROUP BY loan_grade
ORDER BY default_rate DESC;

SELECT
    loan_income_group,
    COUNT(*) AS total_borrowers,
    SUM(loan_status) AS defaults,
    ROUND(100.0 * SUM(loan_status) / COUNT(*), 2) AS default_rate
FROM public.credit_risk
GROUP BY loan_income_group
ORDER BY default_rate DESC;

SELECT *
FROM public.credit_risk
WHERE loan_income_group IS NULL
   OR TRIM(loan_income_group) = '';

SELECT 
    loan_percent_income,
    loan_income_group,
    COUNT(*) AS count
FROM public.credit_risk
GROUP BY loan_percent_income, loan_income_group
ORDER BY loan_percent_income; 

SELECT COUNT(*)
FROM public.credit_risk
WHERE loan_percent_income = 0
  AND (loan_income_group IS NULL OR TRIM(loan_income_group) = '');

UPDATE public.credit_risk
SET loan_income_group = '0-10%'
WHERE loan_percent_income = 0
  AND (loan_income_group IS NULL OR TRIM(loan_income_group) = ''); 

SELECT 
    loan_income_group,
    COUNT(*) AS borrower_count
FROM public.credit_risk
GROUP BY loan_income_group
ORDER BY borrower_count DESC;  

SELECT
    loan_income_group,
    COUNT(*) AS total_borrowers,
    SUM(loan_status) AS defaults,
    ROUND(100.0 * SUM(loan_status) / COUNT(*), 2) AS default_rate
FROM public.credit_risk
GROUP BY loan_income_group
ORDER BY default_rate DESC;

SELECT
    person_home_ownership,
    COUNT(*) AS total_borrowers,
    SUM(loan_status) AS defaults,
    ROUND(100.0 * SUM(loan_status) / COUNT(*), 2) AS default_rate
FROM public.credit_risk
GROUP BY person_home_ownership
ORDER BY default_rate DESC;

SELECT
    cb_person_default_on_file,
    COUNT(*) AS total_borrowers,
    SUM(loan_status) AS defaults,
    ROUND(100.0 * SUM(loan_status) / COUNT(*), 2) AS default_rate
FROM public.credit_risk
GROUP BY cb_person_default_on_file
ORDER BY default_rate DESC;

SELECT
    CASE
        WHEN loan_int_rate < 8 THEN 'Below 8%'
        WHEN loan_int_rate < 12 THEN '8-12%'
        WHEN loan_int_rate < 16 THEN '12-16%'
        ELSE '16%+'
    END AS interest_rate_group,
    COUNT(*) AS total_borrowers,
    SUM(loan_status) AS defaults,
    ROUND(100.0 * SUM(loan_status) / COUNT(*), 2) AS default_rate
FROM public.credit_risk
GROUP BY interest_rate_group
ORDER BY default_rate DESC;

SELECT
    COUNT(*) AS total_rows,
    COUNT(person_age) AS age_available,
    COUNT(person_income) AS income_available,
    COUNT(person_emp_length) AS employment_available,
    COUNT(loan_amnt) AS loan_amount_available,
    COUNT(loan_int_rate) AS interest_rate_available,
    COUNT(loan_status) AS status_available
FROM public.credit_risk;

SELECT
    COUNT(*) AS total_borrowers,
    SUM(loan_status) AS total_defaults,
    ROUND(
        100.0 * SUM(loan_status) / COUNT(*),
        2
    ) AS overall_default_rate
FROM public.credit_risk;
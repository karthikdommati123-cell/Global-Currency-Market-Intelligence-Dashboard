create database currency_exchange_db;
use currency_exchange_db;
select count(*) from rates;
select * from rates
order by exchange_Date asc;
select * FROM rates LIMIT 5;
-- To create New column for country name 
alter table rates
add column country_name varchar(100);
-- Updte the country name in the records 
UPDATE rates SET country_name='Australia' WHERE Currency_Code='AUD';
UPDATE rates SET country_name='Brazil' WHERE Currency_Code='BRL';
UPDATE rates SET country_name='Canada' WHERE Currency_Code='CAD';
UPDATE rates SET country_name='Switzerland' WHERE Currency_Code='CHF';
UPDATE rates SET country_name='China' WHERE Currency_Code='CNY';
UPDATE rates SET country_name='Czech Republic' WHERE Currency_Code='CZK';
UPDATE rates SET country_name='Denmark' WHERE Currency_Code='DKK';
UPDATE rates SET country_name='European Union' WHERE Currency_Code='EUR';
UPDATE rates SET country_name='United Kingdom' WHERE Currency_Code='GBP';
UPDATE rates SET country_name='Hong Kong' WHERE Currency_Code='HKD';
UPDATE rates SET country_name='Hungary' WHERE Currency_Code='HUF';
UPDATE rates SET country_name='Indonesia' WHERE Currency_Code='IDR';
UPDATE rates SET country_name='Israel' WHERE Currency_Code='ILS';
UPDATE rates SET country_name='India' WHERE Currency_Code='INR';
UPDATE rates SET country_name='Iceland' WHERE Currency_Code='ISK';
UPDATE rates SET country_name='Japan' WHERE Currency_Code='JPY';
UPDATE rates SET country_name='South Korea' WHERE Currency_Code='KRW';
UPDATE rates SET country_name='Mexico' WHERE Currency_Code='MXN';
UPDATE rates SET country_name='Malaysia' WHERE Currency_Code='MYR';
UPDATE rates SET country_name='Norway' WHERE Currency_Code='NOK';
UPDATE rates SET country_name='New Zealand' WHERE Currency_Code='NZD';
UPDATE rates SET country_name='Philippines' WHERE Currency_Code='PHP';
UPDATE rates SET country_name='Poland' WHERE Currency_Code='PLN';
UPDATE rates SET country_name='Romania' WHERE Currency_Code='RON';
UPDATE rates SET country_name='Sweden' WHERE Currency_Code='SEK';
UPDATE rates SET country_name='Singapore' WHERE Currency_Code='SGD';
UPDATE rates SET country_name='Thailand' WHERE Currency_Code='THB';
UPDATE rates SET country_name='Turkey' WHERE Currency_Code='TRY';
UPDATE rates SET country_name='South Africa' WHERE Currency_Code='ZAR';
-- To Check where country name is null after updateing !
select currency_code,count(*) as count from rates
where country_name is not null
group by currency_code;
-- To check Total Records for each country 
select Currency_Code, count(*) AS Total_Rows
from rates
group by Currency_Code;
select * from rates;
select count(*) from rates;
SELECT COUNT(DISTINCT Currency_Code)
FROM rates;
-- To check How Many country names are updated
select Currency_Code,count(*) AS Total_Rows,count(country_name) AS Updated_Rows 
from rates
group by Currency_Code;
-- To Update country name row's
UPDATE rates
SET country_name = CASE Currency_Code
    WHEN 'AUD' THEN 'Australia'
    WHEN 'BRL' THEN 'Brazil'
    WHEN 'CAD' THEN 'Canada'
    WHEN 'CHF' THEN 'Switzerland'
    WHEN 'CNY' THEN 'China'
    WHEN 'CZK' THEN 'Czech Republic'
    WHEN 'DKK' THEN 'Denmark'
    WHEN 'EUR' THEN 'European Union'
    WHEN 'GBP' THEN 'United Kingdom'
    WHEN 'HKD' THEN 'Hong Kong'
    WHEN 'HUF' THEN 'Hungary'
    WHEN 'IDR' THEN 'Indonesia'
    WHEN 'ILS' THEN 'Israel'
    WHEN 'INR' THEN 'India'
    WHEN 'ISK' THEN 'Iceland'
    WHEN 'JPY' THEN 'Japan'
    WHEN 'KRW' THEN 'South Korea'
    WHEN 'MXN' THEN 'Mexico'
    WHEN 'MYR' THEN 'Malaysia'
    WHEN 'NOK' THEN 'Norway'
    WHEN 'NZD' THEN 'New Zealand'
    WHEN 'PHP' THEN 'Philippines'
    WHEN 'PLN' THEN 'Poland'
    WHEN 'RON' THEN 'Romania'
    WHEN 'SEK' THEN 'Sweden'
    WHEN 'SGD' THEN 'Singapore'
    WHEN 'THB' THEN 'Thailand'
    WHEN 'TRY' THEN 'Turkey'
    WHEN 'ZAR' THEN 'South Africa'
END;
select * from rates;
select exchange_date,count(*) from rates
group by exchange_date
having count(*) > 1;
select exchange_date,base_currency,currency_code,exchange_rate,country_name from rates
where exchange_date is null
   or base_currency is null
   or currency_code is null
   or exchange_rate is null
  or country_name is null;














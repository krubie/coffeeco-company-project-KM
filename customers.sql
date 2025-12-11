with elso AS (
SELECT *,
--Vezeték, keresztnév nagybetûsítése illetve egybehúzása
CONCAT((SUBSTRING(UPPER(first_name),1,1) + SUBSTRING(LOWER(first_name),2,50)),' ',(SUBSTRING(UPPER(last_name),1,1) + SUBSTRING(LOWER(last_name),2,50))) AS full_name,

-- Emailek javítása, fölösleges karakterek kivétele
CASE
	WHEN email like '% %' THEN REPLACE(TRIM(LOWER(email)),' ','')
	WHEN email not like '%@%.%' THEN null
	WHEN email like '%@@%' then null
	WHEN email like '' THEN null
	WHEN email like ' ' THEN null
	WHEN email like '%,%' THEN REPLACE(TRIM(LOWER(email)),',','.')
	ELSE TRIM(LOWER(email))
END as cleanmail,

--Telefonszámok "csupaszítása"
TRIM(REPLACE(TRANSLATE(phone,'()/,.-+','       '),' ','')) AS cleanphone

FROM coffeeco.dim_customers
),

--Országok, városok nagybetûsítése, space eltávolítása, Magyar egységesítés
masodik as (
SELECT *,
REPLACE((SUBSTRING(UPPER(TRIM(country)),1,1)) + SUBSTRING(LOWER(TRIM(country)),2,50),'Magyarország','Hungary') as cleancountry,
SUBSTRING(UPPER(TRIM(city)),1,1) + SUBSTRING(LOWER(TRIM(city)),2,50) as cleancity
from elso
),

--magyar telefonszámok helyettesítése elõjellel
harmadik as (
SELECT *,
CASE 
	WHEN cleanphone like '06%' AND cleancountry = 'Hungary' THEN '+36' + SUBSTRING(cleanphone,3,50)
	WHEN cleanphone like '36%' AND cleancountry = 'Hungary' THEN '+' + cleanphone
	WHEN cleanphone not like '%36%+36%06%' AND len(cleanphone) = 9 AND country = 'Magyarország' THEN '+36' + cleanphone
	WHEN cleanphone not like '%36%+36%06%' AND len(cleanphone) = 9 AND country = 'Hungary' THEN '+36' + cleanphone
	ELSE cleanphone
END as cleanedphone

FROM masodik
),
--Postakód,születés,gender nagybetûsítés,konvertálás
negyedik as (
SELECT *,
TRIM(UPPER(postal_code)) as cleanpostal,
CONVERT(date, birthdate) as cleanbirthdate,
TRIM(UPPER(gender)) as cleangender
from harmadik
),

--Duplikáció kezelés
otodik as (
SELECT *,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY full_name) AS numberof

from negyedik
)
--DELETE FROM otodik WHERE numberof = 2
SELECT customer_id,
full_name,
cleanmail AS email,
cleanedphone AS phone,
cleancountry AS country,
cleancity AS city,
cleanpostal AS postal_code,
cleanbirthdate AS birthdate,
cleangender AS gender
from otodik
order BY full_name




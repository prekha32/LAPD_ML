CREATE TABLE crime_data_2020_to_present (
    DR_NO INT,
    Date_Rptd DATE NOT NULL,
    Date_Occ DATE NOT NULL,
    Time_Occ TIME NOT NULL,
    AREA INT,
    AREA_NAME VARCHAR(100),
    Rpt_Dist_No INT,
    Part_1_2 INT,
    Crm_Cd VARCHAR(5) PRIMARY KEY,
    Crm_Cd_Desc VARCHAR(100),
	Mocodes TEXT,
    VictAge INT,
    VictSex VARCHAR(1),
    Vict_Descent VARCHAR(1),
    Premis_Cd INT,
    Premis_Desc VARCHAR(75),
    Weapon_Use_Cd NUMERIC,
    Weapon_Desc VARCHAR(100),
    Status VARCHAR(100),
	Status_Desc VARCHAR(100),
    Crm_Cd_1 NUMERIC,
    Crm_Cd_2 NUMERIC,
    Crm_Cd_3 NUMERIC,
    Crm_Cd_4 NUMERIC,
    LOCATION VARCHAR(100),
    Cross_Street VARCHAR(100)
);

ALTER TABLE crime_data_2020_to_present 
ALTER COLUMN crm_cd_1 TYPE NUMERIC;

ALTER TABLE crime_data_2020_to_present 
ALTER COLUMN crm_cd_2 TYPE NUMERIC;

ALTER TABLE crime_data_2020_to_present 
ALTER COLUMN crm_cd_3 TYPE NUMERIC;

ALTER TABLE crime_data_2020_to_present 
ALTER COLUMN crm_cd_4 TYPE NUMERIC;

ALTER TABLE crime_data_2020_to_present
ALTER COLUMN mocodes TYPE TEXT;

ALTER TABLE crime_data_2020_to_present
ALTER COLUMN time_occ TYPE INTEGER
USING EXTRACT(HOUR FROM time_occ)::INTEGER;

ALTER TABLE crime_data_2020_to_present
ALTER COLUMN weapon_use_cd TYPE NUMERIC;

ALTER TABLE crime_data_2020_to_present
DROP CONSTRAINT crime_data_2020_to_present_pkey;

ALTER TABLE crime_data_2020_to_present
ADD COLUMN address_id SERIAL;

ALTER TABLE crime_data_2020_to_present
ADD CONSTRAINT crime_data_2020_to_present_pkey PRIMARY KEY (address_id);

select *
from crime_data_2020_to_present;
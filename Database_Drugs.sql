create database Drugs character set utf8mb4 collate utf8mb4_unicode_ci;	

USE Drugs;

create table PACIENTE(
						PATIENT_ID INT auto_increment,
						PATIENT_SEX ENUM('M','F') NOT NULL,
						PATIENT_AGE INT NOT NULL,
						PATIENT_BP VARCHAR(50) NOT NULL,
						PATIENT_CHOLESTER VARCHAR(50) NOT NULL,
						PATIENT_NA_TO_ FLOAT NOT NULL,
                        PATIENT_DRUG VARCHAR(30) NOT NULL,
                        PRIMARY KEY (PATIENT_ID)
                        );
                        
                        DROP TABLE PACIENTE;
                        DESCRIBE PACIENTE;
                        SELECT *FROM PACIENTE;
                        select * from PACIENTE


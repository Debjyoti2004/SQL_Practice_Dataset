------------------------------------------------------------------------------------------------------------------------
-- Author: Debjyoti Shit
-- Description: SQL script to create the 'Customer_Accounts' table, designed to store over 400+ customer records 
------------------------------------------------------------------------------------------------------------------------

CREATE TABLE Customer_Accounts (
    Account_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Mobile_Number VARCHAR(15),
    Email VARCHAR(255) NULL,
    Account_Type VARCHAR(10) NOT NULL CHECK (Account_Type IN ('Savings', 'Current')),
    Salary DECIMAL(12, 2) CHECK (Salary >= 0),
    City VARCHAR(100) NOT NULL,
    State VARCHAR(100) NOT NULL,
    Country VARCHAR(100) NOT NULL DEFAULT 'India',
    Date_Of_Birth DATE NOT NULL,
    Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other')),
    Created_At TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(10) NOT NULL DEFAULT 'Active' CHECK (Status IN ('Active', 'Inactive')),
    PAN_Number VARCHAR(20) NOT NULL,
    Aadhar_Number VARCHAR(12) NOT NULL 
);
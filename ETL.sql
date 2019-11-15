Drop TABLE if exists Company
CREATE TABLE Company(
Company_Id INT PRIMARY KEY NOT NULL,
Ticker text NOT NULL,
Name text NOT NULL
);
select * from company

Drop TABLE if exists Headlines
CREATE TABLE Headlines(
Company_Id INT  NOT NULL,
Headline_Title text NOT NULL,
Date DATE NOT NULL,
FOREIGN KEY(Company_Id) REFERENCES Company(Company_Id));

select * from Headlines

Drop TABLE if exists Stock
CREATE TABLE Stock(
Date DATE NOT NULL,
Company_Id INT NOT NULL,
Open FLOAT NOT NULL,
Close FLOAT NOT NULL,
High FLOAT NOT NULL,
Low FLOAT NOT NULL,
Adjusted_close FLOAT NOT NULL,
Volume INT NOT NULL,
FOREIGN KEY(Company_Id) REFERENCES Company(Company_Id));

select * from stock
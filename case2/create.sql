CREATE DATABASE IF NOT EXISTS case2_database;
USE case2_database;
CREATE TABLE IF NOT EXISTS password(
    UserName varchar(16),
    PassWord char(41),
    UserID decimal(22,0),
    GroupID decimal(22,0),
    GroupName varchar(64),
    UserHome varchar(255),
    UserShell varchar(255),
    PRIMARY KEY (UserID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
LOAD DATA LOCAL INFILE '/etc/passwd' into table password FIELDS TERMINATED BY ':';

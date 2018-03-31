create database if not EXISTS jumpmanji;

use jumpmanji;
CREATE TABLE if not EXISTS users(
    Id bigint auto_increment not NULL PRIMARY KEY,
    Name NVARCHAR(100) not NULL,
    IntVal int NULL
);

CREATE TABLE if not EXISTS usersItems(
    Id bigint auto_increment not NULL PRIMARY KEY,
    UserId bigint not null,
    ItemName NVARCHAR(100) not NULL
);

Create USER IF not EXISTS 'beetles'@'%' identified by 'abc123!';
GRANT all privileges on jumpmanji.* to 'beetles';
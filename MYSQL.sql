--PARTIE 1

CREATE DATABASE `languages`;  --Exercice 1
CREATE DATABASE `webdevelopment` CHARACTER SET utf8; --Exercice2
CREATE DATABASE IF NOT EXISTS `frameworks` CHARACTER SET utf8; --Exercice 3
DROP DATABASE IF NOT EXISTS `languages` CHARACTER SET utf8; --Exercice 4
DROP DATABASE `languages`; --Exercice 5
DROP DATABASE IF EXISTS `frameworks`; --Exercice 6
DROP DATABASE IF EXISTS `languages`; --Exercice 7

--PARTIE 2

CREATE TABLE webdevelopment.languages (id INT PRIMARY KEY AUTO_INCREMENT, language VARCHAR(255) ); --Exercice1
CREATE TABLE webdevelopment.tools (id INT PRIMARY KEY AUTO_INCREMENT, tool VARCHAR(255) ); --Exercice2
CREATE TABLE webdevelopment.frameworks (id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255) ); --Exercice3
CREATE TABLE webdevelopment.librairies (id INT PRIMARY KEY  AUTO_INCREMENT, library VARCHAR(255) ); --Exercice4
CREATE TABLE webdevelopment.ide (id INT PRIMARY KEY AUTO_INCREMENT, ideName VARCHAR(255) ); --Exercice5






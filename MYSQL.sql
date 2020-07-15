 -- PARTIE 1

CREATE DATABASE `languages`;
CREATE DATABASE `webDevelopment` CHARACTER SET utf8;
CREATE DATABASE IF NOT EXISTS `frameworks` CHARACTER SET utf8;
CREATE DATABASE IF NOT EXISTS `languages` CHARACTER SET utf8;
DROP DATABASE `languages`;
DROP DATABASE IF EXISTS `frameworks`;
DROP DATABASE IF EXISTS `languages`;

-- PARTIE 2

CREATE DATABASE IF NOT EXISTS `webDevelopment` CHARACTER SET utf8;
USE `webDevelopment`;
CREATE TABLE `languages` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `language` VARCHAR(100) );
CREATE TABLE `tools` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `tool` VARCHAR(100) );
CREATE TABLE `frameworks` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `name` VARCHAR(100) );
CREATE TABLE `libraries` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `librarie` VARCHAR(100) );
CREATE TABLE `ide` ( `id` INT PRIMARY KEY AUTO_INCREMENT, `ideName` VARCHAR(100) );
DROP TABLE IF EXISTS `tools`;
DROP TABLE `libraries`;
DROP TABLE `ide`;

--TP PARTIE 2
CREATE DATABASE IF NOT EXISTS `codex` CHARACTER SET utf8;
USE `codex`;
CREATE TABLE `clients` 
( 
    `id` INT PRIMARY KEY AUTO_INCREMENT, 
    `lastname` VARCHAR(100),
    `firstname` VARCHAR(100),
    `birthDate` DATE,
    `address` VARCHAR(100),
    `firstPhoneNumber` INT,
    `secondPhoneNumber` INT,
    `mail` VARCHAR(100)
);


--PARTIE 3
CREATE DATABASE IF NOT EXISTS `webDevelopment` CHARACTER SET utf8;
USE `webDevelopment`;

ALTER TABLE `languages`
ADD `versions` VARCHAR(100);

ALTER TABLE `frameworks`
ADD `version` INT;

ALTER TABLE `languages`
CHANGE `versions` `version` VARCHAR(100);

ALTER TABLE `frameworks`
CHANGE `name` `framework` VARCHAR(100);

ALTER TABLE `frameworks`
 MODIFY `version` VARCHAR(10);

ALTER COLUMN `version` VARCHAR(10);


--TPPARTIE 3
USE `codex`;
ALTER TABLE `clients`;
DROP `secondPhoneNumber`;

ALTER TABLE `clients`;
CHANGE `firstPhoneNumber` `phoneNumber` INT;

ALTER TABLE `clients`;
   ALTER COLUMN `phoneNumber` VARCHAR(10);

ALTER TABLE `clients`;
ADD `zipCode` VARCHAR(100);

ALTER TABLE `clients`;
ADD `city` VARCHAR(100);

--PARTIE 4
USE `webDevelopment` 
INSERT INTO `languages` (`language`, `version`)
     VALUES
     ('JavaScript', 'version 5'),
     ('PHP', 'version 5.2'),
    ('PHP', 'version 5.4'),
     ('HTML', 'version 5.1'),
     ('JavaScript', 'version 6'),
     ('JavaScript', 'version 7'),
     ('JavaScript', 'version 8'),
     ('PHP', 'version 7');


  INSERT INTO `frameworks` (`framework`, `version`)
 VALUES
 ('Symfony', '2.8'),
 ('Symfony', '3'),
 ('Jquery', '1.6'),
 ('Jquery', '2.10');

 --PARTIE 5

SELECT * FROM `languages`;

SELECT `version` FROM `languages` WHERE `language` = 'PHP';

SELECT `version` FROM `languages` WHERE `language` = 'PHP' OR `language` = 'JavaScript'; 

SELECT * FROM `languages` WHERE `id` = 3 OR `id` = 5 OR `id` = 7; 

SELECT * FROM `languages` WHERE `language` = 'javaScript' LIMIT 2;


SELECT * FROM `languages` WHERE `language` <> 'PHP';


SELECT * FROM `languages` ORDER BY `language`;

--PARTIE 6
SCRIPT 
-- --CREATE TABLE `webDevelopment`.`ide` (
-- `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
-- `name` VARCHAR(40) NOT NULL,
-- `version` VARCHAR(10) NOT NULL,
-- `date` DATE NOT NULL,
-- PRIMARY KEY (`id`)
-- )
-- ENGINE=INNODB;

-- INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.3', '2007-06-01');
-- INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.5', '2009-06-01');
-- INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.6', '2010-06-01');
-- INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '3.7', '2011-06-01');
-- INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('Eclipse', '4.3', '2013-06-13');
-- INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('NetBeans', '7', '2011-04-01');
-- INSERT INTO `webDevelopment`.`ide` (`name`, `version`, `date`) VALUES ('NetBeans', '8.2', '2016-10-03');

SELECT * FROM `frameworks` WHERE `version` LIKE '2.%';

SELECT * FROM `frameworks` WHERE `id` IN (1, 3);

SELECT * FROM `ide` WHERE `date` BETWEEN '2010-01-01' AND '2011-12-31';

--PARTIE 7

DELETE FROM `languages` WHERE `languages` LIKE = 'HTML';


UPDATE `frameworks`
SET `framework` = 'Symfony2'
WHERE `framework` = 'Symfony';

UPDATE `languages`
SET `version` = 'version 5.1'
WHERE `languages` = 'JavaScript' AND `version` = 'version 5';

--PARTIE 8

SELECT *
FROM `languages`
LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`;

SELECT *
FROM `languages`
INNER JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`;

--Afficher le nombre de framework qu'a un langage.
SELECT `languages`.`name` AS `langName`,
COUNT(`frameworks`.`name`)
FROM `languages`
LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY `languages`.`name`;

--Afficher les langages ayant plus de 3 frameworks.

-- SELECT `languages`,
-- INNER JOIN `frameworks` HAVING `languages`.`idLanguage` = `frameworks`.`idLanguage`; 














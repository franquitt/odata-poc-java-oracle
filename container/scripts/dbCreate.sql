USE eicas;

ALTER USER 'eicas'@'%' IDENTIFIED WITH mysql_native_password BY 'eicaseicas';

GRANT ALL PRIVILEGES ON eicas.* TO 'eicas'@'%';

FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS `test` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(55),
	KEY `prim` (`id`) USING BTREE,
	PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `user` (
	`userId` INT NOT NULL AUTO_INCREMENT,
	`userName` VARCHAR(55),
	`passWord` VARCHAR(500),
	`male` SMALLINT DEFAULT NULL,
	`birthDate` TIMESTAMP,
	`locLon` DOUBLE,
	`locLat` DOUBLE,
	KEY `prim` (`userId`) USING BTREE,
	PRIMARY KEY (`userId`)
);

INSERT INTO test(name) VALUES ('hola'),('Manola');

INSERT INTO user(userName, passWord, male, birthDate, locLon, locLat) VALUES ('MadProgrammer', "akndjasn98yqwed9aby_d89abd89yasda:554dsad", 1, '1996-08-23 00:00:00', -31.4423351, -64.1924224),
('Franquitt', "dasdasdsadwwqewqeda_dasdasddwqdwe:d51sa1d", 1, '1997-09-27 00:00:00', -30.4448751, -64.2164216),
('Matu_Salen', "dasfdafwfwrwgeafAfa_fasfasrqwawrq:dadw524", 0, '1998-01-02 00:00:00', -31.4489371, -64.1932768),
('GreenPeace', "dsagfsdfwghjaerhjer_fdsgadfasfdas:sadad1s", 0, '1999-02-05 00:00:00', -29.4637251, -64.1786877),
('Cacho_Cachola', "dsadcasdawdwaDwadwa_dadasdasdsada:5brestb", 0, '2000-03-12 00:00:00', -28.4863721, -64.5728978),
('Dr_Hyde', "akndjadsadasdasidja_dasdfagwaghaw:15fdqfe", 1, '2000-04-15 00:00:00', -31.3173213, -64.2787824),
('Big_O', "dasfawfwafawfasvbrw_fasfaerwyerte:aseqwrf", 1, '2000-08-22 00:00:00', -31.2478627, -64.2787237),
('Auto-TsT', "wetewrgeshjtjtdyhdf_dfgwegrehreag:fdsffeq", 1, '2000-08-25 00:00:00', -31.4423351, -64.2786788);
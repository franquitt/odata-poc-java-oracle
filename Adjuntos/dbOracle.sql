create table BOOK
(
	ID NUMBER generated by default on null as identity
		constraint BOOK_PK
			primary key,
	TITLE VARCHAR2(100),
	COSTO FLOAT,
	DESCRIPCION VARCHAR2(200)
);


create table USUARIO
(
	USERID NUMBER generated by default on null as identity
		constraint USUARIO_PK
			primary key,
	USERNAME VARCHAR2(100),
	MALE NUMBER default NULL,
	BIRTHDATE TIMESTAMP(6),
	LOCLON FLOAT,
	LOCLAT FLOAT,
	PASSWORD VARCHAR2(50)
);


create table USUARIO_BOOK
(
	USER_USERID NUMBER,
	LIBROSRECOMENDADOS_ID NUMBER
);

INSERT INTO EICAS.BOOK (ID, TITLE, COSTO, DESCRIPCION) VALUES (1, 'Dr Jekyll', 150.8, ' Excelente!!!');
INSERT INTO EICAS.BOOK (ID, TITLE, COSTO, DESCRIPCION) VALUES (4, 'Peter Class', 145.25, 'POO');
INSERT INTO EICAS.BOOK (ID, TITLE, COSTO, DESCRIPCION) VALUES (2, 'Harry Potter', 145.25, 'Super mistico');
INSERT INTO EICAS.BOOK (ID, TITLE, COSTO, DESCRIPCION) VALUES (3, 'Moby Dick', 145.25, 'Ballenistico');

INSERT INTO EICAS.USUARIO (USERID, USERNAME, MALE, BIRTHDATE, LOCLON, LOCLAT, PASSWORD) VALUES (1, 'MadProgrammer', 1, TO_TIMESTAMP('2020-05-23 19:46:06.708637', 'YYYY-MM-DD HH24:MI:SS.FF6'), 5.15899, 6.252654, 'dasfasfdas_Asdasd:ger23');
INSERT INTO EICAS.USUARIO (USERID, USERNAME, MALE, BIRTHDATE, LOCLON, LOCLAT, PASSWORD) VALUES (6, 'Franquitt', 1, TO_TIMESTAMP('2020-05-23 19:46:06.712396', 'YYYY-MM-DD HH24:MI:SS.FF6'), 25.45678, 64.61987, 'fsdagraesewagfsdaf_fgbrwthtityxgbv:fpk3892c');

INSERT INTO EICAS.USUARIO_BOOK (USER_USERID, LIBROSRECOMENDADOS_ID) VALUES (1,1),(1,4),(6,3);

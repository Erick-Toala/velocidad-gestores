/*=============================================================================================================*/
/*                                 VELOCIDAD DE GESTORES - TALLER 43 TEMA 5                                    */
/*=============================================================================================================*/

/*	Grupo:
	- Erick Alexander Toala Intriago
	- Luis Antonio Tuarez Castro
	- Joan Job Gallardo Alcivar
	- Luis Armando Menendez Mendoza
*/

-- ************************************MARIADB************************************
-- 1) CREAR BASE DE DATOS
CREATE DATABASE BDPRODUCTO;

-- 2) TABLA DE MARIADB
create table PRODUCTO
(
	ID_PRODUCTO VARCHAR(10),
	DESCRIPCION VARCHAR(20),
	COSTO NUMERIC(7,2),
	PRECIO NUMERIC(7,2)
);

-- 3) PROCEDIMIENTO ALMACENADO EN MARIADB
DELIMITER $$
CREATE PROCEDURE PA_INSERTARPRODUCTO (IN PIDPRODUCTO VARCHAR(10),IN PDESCRIPCION VARCHAR(20), IN PCOSTO NUMERIC(7,2), IN PPRECIO NUMERIC(7,2))
BEGIN
  INSERT INTO PRODUCTO VALUES  (PIDPRODUCTO, PDESCRIPCION , PCOSTO, PPRECIO);
END$$
DELIMITER ;

-- PRUEBA
CALL PA_INSERTARPRODUCTO ('1', 'Chocolate', 3,3);


-- ************************************FIREBIRD************************************
-- TABLA DE FIREBIRD
CREATE TABLE PRODUCTO
(
    ID_PRODUCTO varchar(10),
    DESCRIPCION varchar(20),
    COSTO numeric(7,2),
    PRECIO numeric(7,2)          
);


-- PROCEDIMIENTO ALMACENADO CON FIREBIRD

SET TERM ^ ;
CREATE PROCEDURE PA_INSERTARPRODUCTO (
    PIDPRODUCTO VARCHAR(10),
    PDESCRIPCION VARCHAR(20),
    PCOSTO NUMERIC(7,2),
    PPRECIO NUMERIC(7,2))
AS 
BEGIN
  INSERT INTO PRODUCTO (ID_PRODUCTO, DESCRIPCION, COSTO, PRECIO) VALUES (:PIDPRODUCTO, :PDESCRIPCION, :PCOSTO, :PPRECIO);
END^
SET TERM ; ^


-- PRUEBA
EXECUTE PROCEDURE PA_INSERTARPRODUCTO ('1', 'CHOCOLATE', 10, 10);
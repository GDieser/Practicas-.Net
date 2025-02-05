

ALTER PROCEDURE storedAltaPokemon
@numero int,
@nombre varchar(50),
@desc varchar(50),
@img varchar (300),
@idTipo int,
@idDebilidad int
AS
INSERT INTO POKEMONS VALUES (@numero, @nombre, @desc, @img, @idTipo, @idDebilidad, null, 1)

storedAltaPokemon 

select * from POKEMONS

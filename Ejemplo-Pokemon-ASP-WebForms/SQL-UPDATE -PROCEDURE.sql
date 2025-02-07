

CREATE PROCEDURE storedModificarPokemon
@numero int,
@nombre varchar(50),
@desc varchar(50),
@img varchar (300),
@idTipo int,
@idDebilidad int,
@id int
AS
update POKEMONS set Numero = @numero, Nombre = @nombre, Descripcion = @desc, UrlImagen = @img, IdTipo = @idTipo, 
IdDebilidad = @idDebilidad 
Where Id = @id

storedModificarPokemon 

select * from POKEMONS

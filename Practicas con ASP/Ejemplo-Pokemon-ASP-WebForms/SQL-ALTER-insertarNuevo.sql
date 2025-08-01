
ALTER PROCEDURE insertarNuevo
@email varchar(50),
@pass varchar(50)
AS
INSERT INTO USERS (email, pass, admin) OUTPUT inserted.id VALUES (@email, @pass, 0)

EXEC insertarNuevo 'Hola', '123'

SELECT * FROM USERS
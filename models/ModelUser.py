from models.entities.User import User

class ModelUser:
    @classmethod
    def signin(cls, db, usuario):
        try:
            selUsuario = db.connection.cursor()
            selUsuario.execute("SELECT * FROM usuario WHERE correo = %s", (usuario.correo,))
            u = selUsuario.fetchone()
            if u is not None:
                # u[3] es la clave en la BD (hash)
                if User.validarClave(u[3], usuario.clave):
                    return User(u[0], u[1], u[2], u[3], u[4])  # devolvemos el objeto User válido
                else:
                    return None  # contraseña incorrecta
            else:
                return None
        except Exception as ex:
            raise Exception(ex)

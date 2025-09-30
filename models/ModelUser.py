from models.entities.User import User

class ModelUser:
    @classmethod
    def signin(cls, db, usuario):
        try:
            selUsuario = db.connection.cursor()
            selUsuario.execute("SELECT * FROM usuario WHERE correo = %s", (usuario.correo,))
            u = selUsuario.fetchone()
            selUsuario.close()

            if u is not None:
                # u[3] es la clave en la BD (hash)
                if User.validarClave(u[3], usuario.clave):
                    return User(u[0], u[1], u[2], u[3], u[5])  # id, nombre, correo, clave, perfil
                else:
                    return None  # contraseña incorrecta
            else:
                return None
        except Exception as ex:
            raise Exception(ex)

    @classmethod
    def get_by_id(cls, db, user_id):
        try:
            cursor = db.connection.cursor()
            cursor.execute("SELECT id, nombre, correo, clave, perfil FROM usuario WHERE id = %s", (user_id,))
            u = cursor.fetchone()
            cursor.close()
            if u is not None:
                return User(u[0], u[1], u[2], u[3], u[4])
            return None
        except Exception as ex:
            raise Exception(ex)

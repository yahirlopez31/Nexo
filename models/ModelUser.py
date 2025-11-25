from models.entities.User import User

class ModelUser:
    @classmethod
    def signin(cls, db, usuario):
        try:
            cursor = db.connection.cursor()
            cursor.execute("SELECT * FROM usuario WHERE correo = %s", (usuario.correo,))
            u = cursor.fetchone()
            cursor.close()

            if u is not None:
                if User.validarClave(u[3], usuario.clave):
                    return User(
                        u[0],  # id
                        u[1],  # nombre
                        u[2],  # correo
                        u[3],  # clave
                        u[6]   # PERFIL -> A o U
                    )
            return None
        except Exception as ex:
            raise Exception(ex)

    @classmethod
    def get_by_id(cls, db, user_id):
        try:
            cursor = db.connection.cursor()
            cursor.execute("SELECT id, nombre, correo, clave, telefono, direccion, perfil FROM usuario WHERE id = %s", (user_id,))
            u = cursor.fetchone()
            cursor.close()

            if u is not None:
                return User(
                    u[0],
                    u[1],
                    u[2],
                    u[3],
                    u[6]   # PERFIL correcto
                )
            return None
        except Exception as ex:
            raise Exception(ex)

from flask_login import UserMixin
from werkzeug.security import check_password_hash

class User(UserMixin):
    def __init__(self, id, nombre, correo, clave, perfil):
        self.id = id
        self.nombre = nombre
        self.correo = correo
        self.clave = clave
        self.perfil = perfil

    def get_id(self):
        return str(self.id)

    @staticmethod
    def validarClave(hash_db, clave_input):
        """
        Compara la clave ingresada con el hash almacenado en la BD (pbkdf2:sha256).
        """
        return check_password_hash(hash_db, clave_input)



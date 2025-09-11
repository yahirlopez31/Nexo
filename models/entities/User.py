import hashlib
from flask_login import UserMixin

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
        Compara la clave en texto plano con el hash guardado en la base de datos.
        Usa SHA256 para validar.
        """
        hash_input = hashlib.sha256(clave_input.encode('utf-8')).hexdigest()
        return hash_input == hash_db

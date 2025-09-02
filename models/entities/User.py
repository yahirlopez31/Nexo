import hashlib

class User:
    def __init__(self, id, nombre, correo, clave, rol):
        self.id = id
        self.nombre = nombre
        self.correo = correo
        self.clave = clave
        self.rol = rol

    @staticmethod
    def validarClave(hash_db, clave_input):
        """
        Compara una clave en texto plano con el hash guardado en la base de datos.
        Aquí se puede usar hashing con SHA256 o lo que estés usando.
        """
        hash_input = hashlib.sha256(clave_input.encode('utf-8')).hexdigest()
        return hash_input == hash_db

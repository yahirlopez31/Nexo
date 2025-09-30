from flask import Flask, render_template, request, redirect, url_for, flash
from config import config
from werkzeug.security import generate_password_hash
from flask_mysqldb import MySQL
from models.entities.User import User
from models.ModelUser import ModelUser
from flask_login import LoginManager, login_user, logout_user, login_required, current_user

nexoApp = Flask(__name__)
nexoApp.config.from_object(config['development'])
db = MySQL(nexoApp)

signinManager = LoginManager()
signinManager.init_app(nexoApp)
signinManager.login_view = "signin"

@signinManager.user_loader
def load_user(user_id):
    return ModelUser.get_by_id(db, user_id)

@nexoApp.route('/')
def home():
    return render_template('home.html')

@nexoApp.route('/signin', methods=["GET", "POST"])
def signin():
    if request.method == "POST":
        correo = request.form.get("correo")
        clave = request.form.get("clave")

        usuario = User(0, None, correo, clave, None)
        UsuarioAutenticado = ModelUser.signin(db, usuario)

        if UsuarioAutenticado is not None:
            login_user(UsuarioAutenticado)

            if UsuarioAutenticado.perfil == 'A':
                return render_template('admin.html')
            else:
                return render_template('user.html')
        else:
            print(f"Error: usuario o clave incorrectos -> {correo}, {clave}")
            flash('Usuario o contraseña incorrectos')
            return redirect(request.url)

    return render_template('signin.html')

@nexoApp.route('/signup', methods=["GET", "POST"])
def signup():
    if request.method == "POST":
        nombre = request.form.get("nombre")
        correo = request.form.get("correo")
        clave = request.form.get("clave")
        telefono = request.form.get("telefono")
        direccion = request.form.get("direccion")

        if not nombre or not correo or not clave or not telefono or not direccion:
            return "Faltan datos en el formulario", 400

        claveCifrada = generate_password_hash(clave)
        perfil = 'U'

        cursor = db.connection.cursor()
        cursor.execute(
            "INSERT INTO usuario (nombre, correo, clave, telefono, direccion, perfil) VALUES (%s, %s, %s, %s, %s, %s)",
            (nombre.upper(), correo, claveCifrada, telefono, direccion, perfil)
        )
        db.connection.commit()
        cursor.close()

        return redirect(url_for("signin"))

    return render_template('signup.html')

@nexoApp.route('/signout')
@login_required
def signout():
    logout_user()
    return redirect(url_for("signin"))


@nexoApp.route('/sUsuario', methods=['POST','GET'])
def sUsuario():
    selUsuario = db.connection.cursor()
    selUsuario.execute("SELECT * FROM usuario")
    u = selUsuario.fetchall()
    selUsuario.close()
    return render_template('Users.html', usuarios=u) 


@nexoApp.route('/operaciones')
@login_required
def operaciones():
    return render_template('operaciones.html')

if __name__ == '__main__':
    nexoApp.config.from_object(config['development'])
    nexoApp.run(debug=True, port=7777)

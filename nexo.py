from flask import Flask, render_template, request, redirect, url_for
from config import config

nexoApp = Flask(__name__) 

@nexoApp.route('/')
def home():
    return render_template('home.html')

# Ruta para iniciar sesión
@nexoApp.route('/signin', methods=["GET", "POST"])
def signin():
    if request.method == "POST":
        email = request.form.get("email")
        password = request.form.get("password")
        # Aquí deberías validar usuario
        print(f"Iniciar sesión con: {email}, {password}")
        return redirect(url_for("home"))
    return render_template('signin.html')

# Ruta para registrarse
@nexoApp.route('/signup', methods=["GET", "POST"])
def signup():
    if request.method == "POST":
        name = request.form.get("name")
        email = request.form.get("email")
        password = request.form.get("password")
        # Aquí deberías guardar el usuario
        print(f"Usuario registrado: {name}, {email}, {password}")
        return redirect(url_for("signin"))
    return render_template('signup.html')

if __name__ == '__main__':
    nexoApp.run(debug=True, port=7777)

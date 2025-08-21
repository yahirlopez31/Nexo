from flask import Flask

nexoApp = Flask(__name__) 

@nexoApp.route('/')
def home():
    return '<h1> Hola hola!</h1>' 

if __name__ == '__main__':
    nexoApp.run(debug=True,port=7777)
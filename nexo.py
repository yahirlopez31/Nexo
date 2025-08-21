from flask import Flask, render_template

nexoApp = Flask(__name__) 

@nexoApp.route('/')
def home():
    return render_template('home.html')

if __name__ == '__main__':
    nexoApp.run(debug=True,port=7777)
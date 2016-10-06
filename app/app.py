from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'hello66!'


@app.route('/verify')
def verify():
    return 'creates verification66'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

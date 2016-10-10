from flask import Flask
app = Flask(__name__)


@app.route('/')
def hello():
    return 'hello'


@app.route('/verify')
def verify():
    return 'verify route is working!'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

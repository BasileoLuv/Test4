from flask import Flask, request
from calc.calculator import Calculator

app = Flask(__name__)


@app.route("/")
def root():
    return "Try <a href='add'>/add</a> <a href='sub'>/sub</a> <a href='mul'>/mul</a> and <a href='div'>/div</a> URLs"


@app.route("/sub")
def sub():
    try:
        a = request.args.get('a')
        b = request.args.get('b')
        return str(Calculator.sub(float(a), float(b)))
    except:
        return "Usage <a href='sub?a=20&b=5'>example</a>".format(request.host_url)


@app.route("/add")
def add():
    try:
        a = request.args.get('a')
        b = request.args.get('b')
        return str(Calculator.add(float(a), float(b)))
    except:
        return "Usage <a href='add?a=2&b=4'>example</a>".format(request.host_url)


@app.route("/mul")
def mul():
    try:
        a = request.args.get('a')
        b = request.args.get('b')
        return str(Calculator.mul(float(a), float(b)))
    except:
        return "Usage <a href='mul?a=2&b=4'>example</a>".format(request.host_url)


@app.route("/div")
def div():
    try:
        a = request.args.get('a')
        b = request.args.get('b')
        return str(Calculator.div(float(a), float(b)))
    except:
        return "Usage <a href='div?a=9&b=3'>example</a>".format(request.host_url)

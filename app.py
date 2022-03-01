#!/usr/bin/python3
# -*- coding: utf-8 -*-
from flask import Flask
import os
from flask import render_template, redirect

app = Flask(__name__)

@app.route("/")
def rootfun():
    return "Flask inside Docker demo"

@app.route("/secret")
def secret():
    return "WTH you doing here. Get the H out"

@app.route("/bye")
def bye():
    return "OK, not sure why you were here anyway"

@app.route("/hello")
def hello():
    return "oh, hi. don\'t stay too long"

@app.route('/eg1')
def template():
    return render_template('eg1.html')

@app.route('/ucdavis')
def davis():
    return redirect('http://www.ucdavis.edu', code = 302)

if __name__ == "__main__":
    app.run(debug=True)
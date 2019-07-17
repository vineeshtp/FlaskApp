from flask import Flask, flash, redirect,render_template, request, session, abort
import sys
    
app = Flask(__name__)

@app.route("/")
def index():
    return "Flask App .... new 99999"

@app.route("/hello/<string:name>/")
def hello(name):
    return render_template('test.html', name=name) #</string:name>

@app.route("/Members")
def members():
    return "Members!"

@app.route("/members/<string:name>/")
def getMember(name):
    return name

if __name__ == '__main__':
    # app.run() #(host='0.0.0.0', port=80)
    app.run(host='127.0.0.1', port=8084,debug=True)
    app.quit()

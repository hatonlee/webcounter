from flask import Flask, redirect, render_template, request
from counter import Counter

app = Flask(__name__)
cnt = Counter()

@app.route("/")
def index():
    return render_template("index.html", value=cnt.value)

@app.route("/increment", methods=["POST"])
def increment_value():
    cnt.increase()
    return redirect("/")

@app.route("/set", methods=["POST"])
def set_value():
    new_value = int(request.form["set_value"])
    cnt.set(new_value)
    return redirect("/")

@app.route("/reset", methods=["POST"])
def reset_value():
    cnt.reset()
    return redirect("/")
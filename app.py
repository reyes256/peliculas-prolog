from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/results", methods=["POST","GET"])
def results():
    username = request.form['username']
    password = request.form['password']

    return render_template("results.html", username=username, password=password)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)

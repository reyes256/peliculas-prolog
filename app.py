from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/results", methods=["POST","GET"])
def results():
    genre = request.form['genre']
    year = request.form['year']
    director = request.form['director']

    return render_template("results.html", genre=genre, year=year, director=director)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)

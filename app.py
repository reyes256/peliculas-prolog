from flask import Flask, render_template, request
from pyswip import Prolog

# CODIGO PARA PROLOG
prolog = Prolog()
prolog.consult('./static/basePeliculas.pl')

# SE NECESITAN REMPLAZAR PARAMETROS POR VALORES PERO ASI FUNCIONARIA
# prolog.query("pelicula_por_titulo(Pelicula, Titulo)")

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/results", methods=["POST","GET"])
def results():
    genre = request.form['genre']
    year = request.form['year']
    director = request.form['director']

    #Aqui se da el valor "null" si es que no se selecciona nada
    if year == "":
        year = "null"
                
    # SI LOS VALORES LLEVAN null COMO VALOR, IGNORARLOS Y RELIZAR CONSULTA SIN ELLOS
    # AQUI SE HARAN LAS CONSULTAS DE PROLOG CON LOS VALORES RECIBIDOS (genre, year, director)
    #Consulta de pelicula solo por genero
    if genre != "null" and year == "null" and director == "null":
        resultados = list(prolog.query("peliculas_por_genero(" + str(genre) + ", Peliculas)."))
        return render_template("results.html", resultados=resultados)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)
%Hechos
pelicula(civil_war, accion, 2016, anthony_russo).
pelicula(avengers, accion, 2012, joss_whedon).
pelicula(titanic, drama, 1997, james_cameron).
pelicula(jurassic_park, ciencia_ficcion, 1993, steven_spielberg).
pelicula(pulp_fiction, drama, 1994, quentin_tarantino).
pelicula(avengers_endgame, accion, 2019, anthony_russo).
pelicula(joker, drama, 2019, todd_phillips).
pelicula(avatar, ciencia_ficcion, 2009, james_cameron).
pelicula(interstellar, ciencia_ficcion, 2014, christopher_nolan).
pelicula(el_rey_leon, animacion, 1994, roger_allers).
pelicula(shrek, animacion, 2001, andrew_adamson).
pelicula(toy_story, animacion, 1995, john_lasseter).
pelicula(frozen, animacion, 2013, chris_buck).
pelicula(inception, ciencia_ficcion, 2010, christopher_nolan).
pelicula(matrix, ciencia_ficcion, 1999, the_wachowskis).
pelicula(forrest_gump, drama, 1994, robert_zemeckis).
pelicula(gladiator, accion, 2000, ridley_scott).
pelicula(die_hard, accion, 1988, john_mctiernan).
pelicula(braveheart, drama, 1995, mel_gibson).
pelicula(the_shawshank_redemption, drama, 1994, frank_darabont).
pelicula(the_dark_knight, accion, 2008, christopher_nolan).
pelicula(the_lion_king, animacion, 2019, jon_favreau).
pelicula(the_godfather, drama, 1972, francis_ford_coppola).
pelicula(jaws, terror, 1975, steven_spielberg).
pelicula(the_hangover, comedia, 2009, todd_phillips).
pelicula(the_avengers, accion, 2012, joss_whedon).
pelicula(black_panther, accion, 2018, ryan_coogler).
pelicula(coco, animacion, 2017, lee_unkrich).
pelicula(finding_nemo, animacion, 2003, andrew_stanton).
pelicula(the_social_network, drama, 2010, david_fincher).
pelicula(the_wolf_of_wall_street, drama, 2013, martin_scorsese).
pelicula(la_la_land, drama, 2016, damien_chazelle).
pelicula(casablanca, drama, 1942, michael_curtiz).
pelicula(fight_club, drama, 1999, david_fincher).
pelicula(the_matrix, ciencia_ficcion, 1999, the_wachowskis).
pelicula(saving_private_ryan, guerra, 1998, steven_spielberg).
pelicula(et_the_extraterrestrial, ciencia_ficcion, 1982, steven_spielberg).
pelicula(ratatouille, animacion, 2007, brad_bird).
pelicula(incredibles, animacion, 2004, brad_bird).
pelicula(the_prestige, drama, 2006, christopher_nolan).
pelicula(the_notebook, romance, 2004, nick_cassavetes).
pelicula(the_grand_budapest_hotel, comedia, 2014, wes_anderson).
pelicula(memento, thriller, 2000, christopher_nolan).
pelicula(the_departed, drama, 2006, martin_scorsese).
pelicula(jaws, terror, 1975, steven_spielberg).
pelicula(the_hangover, comedia, 2009, todd_phillips).
pelicula(avengers_infinity, accion, 2018, joss_whedon).
pelicula(black_panther, accion, 2018, ryan_coogler).
pelicula(coco, animacion, 2017, lee_unkrich).
pelicula(finding_nemo, animacion, 2003, andrew_stanton).

%Reglas
% Regla para consultar películas por título
pelicula_por_titulo(Pelicula, Titulo) :-
    pelicula(Titulo, _, _, _),
    atom_string(TituloAtom, Titulo),
    pelicula(Pelicula, _, _, _),
    atom_string(PeliculaAtom, Pelicula),
    sub_atom(PeliculaAtom, _, _, _, TituloAtom).

% Regla para consultar películas por genero
pelicula_genero(Pelicula,Genero):- pelicula(Pelicula,Genero, _,_).
% Regla para consultar películas por director
pelicula_director(Pelicula,Director):- pelicula(Pelicula,_, _,Director).
% Regla para consultar películas por Año
pelicula_year(Pelicula, Year):- pelicula(Pelicula,_,Year,_).
% Regla para verificar existencia de una película
existe_pelicula(Pelicula) :-
    pelicula(Pelicula, _, _, _).
genero(Genero):- pelicula(_,Genero,_,_).
year(Year):- year(_,_,Year,_).
director(Director):- director(_,_,_,Director).
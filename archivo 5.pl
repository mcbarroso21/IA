cocentracion_nubes(X):-nl, write(X), write(' hay concentracion anormal de nubes? [s/n]: '), read(R), R=s.
baja_presion_atmosferica(X):-nl, write(X), write(' hay baja presion atmosferica? [s/n] : '), read(R), R=s.
vientos_convergentes(X):-nl, write(X), write(' hay vientos convergentes? [s/n]: '), read(R), R=s.
oleaje_marea_tormenta(X):-nl, write(X), write(' hay oleaje y marea de tormenta? [s/n]: '), read(R), R=s.
fuertes_vientos(X):-nl, write(X), write(' hay fuertes vientos? [s/n]: '), read(R), R=s.
lluvias(X):-nl, write(X), write(' hay lluvias abundantes? [s/n]: '), read(R), R=s.
tormentas_electricas(X):-nl, write(X), write(' hay tormentas electricas? [s/n]: '), read(R), R=s.
vientos_increm_sup(X):-nl, write(X), write(' hay vientos incrementados en la superficie? [s/n]: '),
read(R), R=s.
vientos_min(X):-nl, write(X), write(' tiene vientos menores a 60 km/h? [s/n]: '),read(R), R=s.


ciclon(X):-cocentracion_nubes(X),baja_presion_atmosferica(X),vientos_convergentes(X),oleaje_marea_tormenta(X).
huracan(X):-fuertes_vientos(X), lluvias(X), tormentas_electricas(X).
depresion_trop(X):-baja_presion_atmosferica(X),vientos_increm_sup(X),vientos_min(X).

diagnostico(X):-nl, write('Se investiga Ciclon '), ciclon(X),
             nl, write(X), write(' Hay un ciclon ').
diagnostico(X):-nl, write('Se investiga Huracan '), huracan(X),
             nl, write(X), write(' Hay un Huracan ').
diagnostico(X):-nl, write('Se investiga Depresion Tropical '), depresion_trop(X),
             nl, write(X), write(' Hay una Depresion Tropical ').
diagnostico(X):-nl, write('NO SE LOGRO UN DIAGNOSTICO').
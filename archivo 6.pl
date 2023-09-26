clima_seco(P):-nl, write(P), write('Se persive pca humedad en el ambiente? [s/n]: '), read(R), R=s.
cambio_de_temperatura(P):-nl, write(P), write('Se persive bruscos cambios en la temperatura? [s/n]: '), read(R), R=s.
cielo_despejado(P):-nl, write(P), write('Se nota el cielo azul claro sin marejadas ni nubes oscuras? [s/n]: '), read(R), R=s.
temperatura(P):-nl, write(P), write('la temperatura ronda entre los 28-31 grados celcuis? [s/n]: '),read(R), R=s.
cielo_nublado(P):-nl, write(P), write('El cielo esta nublado? [s/n]: '), read(R), R=s.
vientos_convergentes(P):-nl, write(P), write('hay vientos convergentes? [s/n]: '), read(R), R=s.
concentracion_nubes(P):-nl, write(P), write('hay concentracion anormal de  nubes? [s/n]: '), read(R), R=s.
baja_presion_atmosferica(P):-nl, write(P), write('hay baja presion atmosferica? [s/n]: '), read(R), R=s.
fuertes_vientos(P):-nl, write(P), write('hay fuertes vientos? [s/n]: '),read(R), R=s.
lluvias(P):-nl, write(P), write('hay lluvias abundantes? [s/n]: '),read(R), R=s.
tormentas_electricas(P):-nl, write(P), write('hay tormentas electricas? [s/n]: '),read(R), R=s.
vientos_increm_sup(P):-nl, write(P), write('hay vientos incrememntados en la superficie? [s/n]: '),read(R), R=s.
vientos_min(P):-nl, write(P), write('tiene vientos menores a 60 km/h? [s/n]: '),read(R), R=s.
oleaje_marea_tormenta(P):-nl, write(P), write('hay oleaje y marea de tormenta? [s/n]: '), read(R), R=s.

dia_calido(P):-cielo_despejado(P), temperatura(P).
dia_lluvioso(P):-cielo_nublado(P).
frente_frio(P):-clima_seco(P), cambio_de_temperatura(P).
ciclon(P):-concentracion_nubes(P), baja_presion_atmosferica(P), vientos_convergentes(P), oleaje_marea_tormenta(P).
huracan(P):-fuertes_vientos(P), lluvias(P), tormentas_electricas(P).
depresion_trop(P):-baja_presion_atmosferica(P), vientos_increm_sup(P), vientos_min(P).

diagnostico(P):-nl, write('Se investiga Dia calido '),dia_calido(P), nl, write(P), write('Hoy es un dia calido ').
diagnostico(P):-nl, write('Se investiga Dia lluvioso '),dia_lluvioso(P), nl, write(P), write('Hoy sera un dia lluvioso ').
diagnostico(P):-nl, write('Se investiga Frente frio '),frente_frio(P), nl, write(P), write('Para hoy se pronostica frente frio por lo cual les aconsejo abrigarse desde hora tempranas del dia ').
diagnostico(P):-nl, write('Se investiga Ciclon '),ciclon(P), nl, write(P), write('Hay un Cilcon ').
diagnostico(P):-nl, write('Se investiga Huracan '),huracan(P), nl, write(P), write('Hay un Huracan ').
diagnostico(P):-nl, write('Se investiga Depresion Tropical '),depresion_trop(P), nl, write(P), write('Hay una Depresion Tropical ').
diagnostico(P):-nl, write('No se logro ningun diagnostico de pronostico del tiempo ').
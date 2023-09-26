dolor_lumbar(P):-nl, write(P), write('Tiene dolor lumbar? [s/n]: '), read(R), R=s.
nauseas(P):-nl, write(P), write('Tiene nauseas? [s/n]: '), read(R), R=s.
ardor_al_orinar(P):-nl, write(P), write('Se nota algun ardor al orinar? [s/n]: '), read(R), R=s.
retension_de_liquido(P):-nl, write(P), write('Tiene retension del liquido? [s/n]: '),read(R), R=s.
disminucion_peso(P):-nl, write(P), write('Ha notado disminucion en su peso corporal? [s/n]: '), read(R), R=s.
inflamacion_pies(P):-nl, write(P), write('Tiene los pies inflamdos? [s/n]: '), read(R), R=s.
dolor_abdominal(P):-nl, write(P), write('Tiene dolor abdominal? [s/n]: '), read(R), R=s.
dolor_abdominal_intens(P):-nl, write(P), write('Tiene dolor abdominal intenso? [s/n]: '), read(R), R=s.
dolor_intens_pecho(P):-nl, write(P), write('Tiene fuerte dolor en le pecho? [s/n]: '), read(R), R=s.
falta_aire(P):-nl, write(P), write('Tiene falta de aire? [s/n]: '), read(R), R=s.
perdida_conocimiento(P):-nl, write(P), write('Tiene perdida del conocimiento? [s/n]: '), read(R), R=s.
presion_alta(P):-nl, write(P), write('Tiene la presion alta? [s/n]: '),read(R), R=s.
vomito(P):-nl, write(P), write('Tiene vomito? [s/n]: '),read(R), R=s.
dolor_cabeza(P):-nl, write(P), write('Tiene dolor de cabeza? [s/n]: '),read(R), R=s.

infeccion_urinaria(P):-dolor_lumbar(P), nauseas(P), ardor_al_orinar(P), retension_de_liquido(P).
calculo_nefritico(P):-disminucion_peso(P), inflamacion_pies(P), dolor_abdominal_intens(P).
insuficienicia_renal(P):-retension_de_liquido(P), dolor_abdominal(P).
infarto_miocardio(P):-dolor_intens_pecho(P), falta_aire(P), perdida_conocimiento(P), vomito(P).
osteocondritis(P):-dolor_intens_pecho(P), falta_aire(P), presion_alta(P).
migraña(P):-nauseas(P), vomito(P), dolor_cabeza(P).


diagnostico(P):-nl, write('Se investiga Infeccion Urinaria '),infeccion_urinaria(P), nl, write(P), write('Tiene Infeccion Urinaria ').
diagnostico(P):-nl, write('Se investiga Calculo Nefritico '),calculo_nefritico(P), nl, write(P), write('Tiene Calculo Nefritico ').
diagnostico(P):-nl, write('Se investiga Insuficiencia Renal '),insuficienicia_renal(P), nl, write(P), write('Tiene Insuficiencia Renal ').
diagnostico(P):-nl, write('Se investiga Infarto agudo de Miocardio '),infarto_miocardio(P), nl, write(P), write('Tiene un Infarto agudo de Miocardio '). ').
diagnostico(P):-nl, write('Se investiga Ostiocondritis '),osteocondritis(P), nl, write(P), write('Tiene Osteocondritis ').
diagnostico(P):-nl, write('Se investiga Migraña '),migraña(P), nl, write(P), write('Tiene crisis de Migraña ').
diagnostico(P):-nl, write('No se logro ningun diagnostico ').
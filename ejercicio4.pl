sed(X):-nl, write(X), write(' tiene exceso de sed? [s/n]: '), read(R), R=s.
miccion(X):-nl, write(X), write(' tiene necesidad de ir a orinar varias veces? [s/n]: '), 
read(R), R=s.
hambre(X):-nl, write(X), write(' tiene exceso de hambre? [s/n]: '), read(R), R=s.
fatiga(X):-nl, write(X), write(' tiene fatiga constante? [s/n]: '), read(R), R=s.
aumento_dis(X):-nl, write(X), write(' aumento o disminuyo de peso rapidamnete? [s/n]: '), 
read(R), R=s.
nauseas(X):-nl, write(X), write(' tiene nauseas? [s/n]: '), read(R), R=s.
vomito(X):-nl, write(X), write(' tiene vomito? [s/n]: '), read(R), R=s.
perdida_apt(X):-nl, write(X), write(' tiene perdida del apetito? [s/n]: '), read(R), R=s.

diabetes2(X):-sed(X), miccion(X), hambre(X), fatiga(X), aumento_dis(X).
insuf_renal_cron(X):-miccion(X), fatiga(X), nauseas(X), vomito(X), perdida_apt(X).

diagnostico(X):-nl, write('Se investiga Diabetes Tipo II '), diabetes2(X),
             nl, write(X), write(' tiene Diabetes Tipo II ').
diagnostico(X):-nl, write('Se investiga Insuficiencia Renal Cronica '), insuf_renal_cron(X),
             nl, write(X), write(' tiene Insuficiencia Renal Cronica ').
diagnostico(X):-nl, write('NO SE LOGRO UN DIAGNOSTICO').
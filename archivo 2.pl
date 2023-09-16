%Reglas
malestar(X):-nl,write(X),write(' tiene malestar? [s/n]: '), read(R),R=s.
fiebre(X):-nl,write(X),write(' tiene fiebre? [s/n]: '), read(R),R=s.
tos(X):- nl,write(X),write(' tiene tos? [s/n]: '), read(R),R=s.
sec_nas(X):-nl,write(X),write(' tiene sereciones nasales? [s/n]: '), read(R),R=s.
dolor_art_mus(X):-nl,write(X),
       write(' tiene dolor muscular o en articulaciones?[s/n]: '), read(R),R=s.
rash(X):-nl,write(X),write(' tiene rash [s/n]: '), read(R),R=s.

%preguntas
gripe(X):- malestar(X), fiebre(X), tos(X),sec_nas(X).
dengue(X):- malestar(X), fiebre(X), dolor_art_mus(pepe), rash(X).

%Diagnostico
diagnostico(X):-nl, write('Se investiga GRIPE'),gripe(X),
             nl, write(X), write(' tiene sintomas de GRIPE.'),fail.
diagnostico(X):-nl, write('Se investiga DENGUE'), dengue(X),
             nl, write(X),write(' tiene sospecha de DENGUE.').
diagnostico(X):-write(' NO SE LOGRO UN DIAGNOSTICO.').

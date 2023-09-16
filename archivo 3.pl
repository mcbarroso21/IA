malestar(X):-nl,write(X),write(' tiene malestar? [s/n]: '), read(R),R=s.
fiebre(X):-nl,write(X),write(' tiene fiebre? [s/n]: '), read(R),R=s.
tos(X):- nl,write(X),write(' tiene tos? [s/n]: '), read(R),R=s.
sec_nas(X):-nl,write(X),write(' tiene sereciones nasales? [s/n]: '), read(R),R=s.
dolor_art_mus(X):-nl,write(X),
       write(' tiene dolor muscular o en articulaciones? [s/n]: '), read(R),R=s.
rash(X):-nl,write(X),write(' tiene rash [s/n]: '), read(R),R=s.
hemorragia_inusual(X):-nl,write(X),write(' tiene algun tipo de hemorragia inusual? [s/n]: '), 
read(R),R=s.

gripe(X):- malestar(X), fiebre(X), tos(X),sec_nas(X).
dengue(X):- malestar(X), fiebre(X), dolor_art_mus(X), rash(X).
dengue_hemorr(X):- hemorragia_inusual(X).

diagnostico(X):-nl, write('Se investiga GRIPE'), gripe(X),
             nl, write(X), write(' tiene sintomas de GRIPE.'),fail.
diagnostico(X):-nl, write('Se investiga DENGUE'), dengue(X),
             nl, write(X),write(' tiene sospecha de DENGUE.'), fail.
diagnostico(X):-nl, write('Se investiga DENGUE HEMORRAGICO'), dengue_hemorr(X),
             nl, write(X),write(' tiene DENGUE HEMORRAGICO.'),fail.
diagnostico(X):-write(' NO SE LOGRO UN DIAGNOSTICO.').

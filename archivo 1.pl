varon(pepe).
varon(pepin).
hembra(maria).
hembra(mary).
hembra(elsa).
hembra(lolita).
progenitor(pepe,pepin).
progenitor(pepe,mary).
progenitor(maria,pepin).
progenitor(maria,mary).
progenitor(pepin,lolita).
progenitor(elsa,lolita).

padre(X,Y):-varon(X), progenitor(X,Y).
madre(X,Y):-hembra(X), progenitor(X,Y).
hijo((X,Y):-varon(X), progenitor(X,Y).
hija((X,Y):-hembra(X), progenitor(X,Y).
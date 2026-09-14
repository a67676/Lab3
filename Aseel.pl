female(hessa).
female(nora).
female(reema).
female(sara).
female(jana).
male(mohammed).
male(faisal).
male(khalid).

married(hessa, mohammed).
married(nora, faisal).
married(reema, khalid).

parent(hessa, faisal).
parent(hessa, reema).
parent(mohammed, faisal).
parent(mohammed, reema).
parent(nora, sara).
parent(faisal, sara).
parent(reema, jana).
parent(khalid, jana).

wife(S, X):-
    female(S),
    married(S, X).
husband(S, X):-
    male(S),
    married(X, S).
sister(S, X):-
    female(S),
    parent(P, S),
    parent(P, X).
brother(S, X):-
    male(S),
    parent(P, S),
    parent(P,X).
daughter(S, X):-
    female(S),
    parent(X, S).
son(S, X):-
    male(S),
    parent(X, S).
father(S, X):-
    male(S),
    parent(S, X).
mother(S, X):-
    female(S),
    parent(S, X).





male(abraham).
male(herb).
male(homer).
male(clancy).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(ling).
female(maggie).
female(lisa).

parent(abraham,herb).
parent(abraham,homer).
parent(mona,herb).
parent(mona,homer).

parent(homer,bart).
parent(homer,lisa).
parent(homer,maggie).

parent(marge,bart).
parent(marge,lisa).
parent(marge,maggie).

parent(clancy,marge).
parent(clancy,patty).
parent(clancy,selma).

parent(jackie,selma).
parent(jackie,patty).
parent(jackie,marge).

parent(selma,ling).

father(X,Y) :- male(X),parent(X,Y).

mother(X,Y) :- female(X),parent(X,Y).

son(X,Y) :- male(X),parent(Y,X).

daughter(X,Y) :- female(X),parent(Y,X).

brother(X,Y) :- male(X),parent(P,X),parent(P,Y),X \= Y.

sister(X,Y) :- female(X),parent(P,X),parent(P,Y),X \= Y.

grandfather(X,Y) :- male(X),parent(X,P),parent(P,Y).

aunt(X,Y) :- sister(X,P),parent(P,Y).

uncle(X,Y) :- brother(X,P),parent(P,Y).

cousin(X,Y) :- parent(P1,X),parent(P2,Y),parent(G,P1),parent(G,P2),P1 \= P2,X \= Y.

ancestor(X,Y) :- parent(X,Y).

ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).














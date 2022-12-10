child(john,sue).   child(john,sam).   
child(jane,sue).   child(jane,sam).   
child(sue,george).   child(sue,gina). 

male(john).   male(sam).     male(george). 
female(sue).  female(jane).  female(june). 

parent(Y,X) :- child(X,Y).
father(Y,X) :- child(X,Y), male(Y).
opp_sex(X,Y) :- male(X), female(Y). 
opp_sex(Y,X) :- male(X), female(Y). 
grand_father(X,Z) :- father(X,Y), parent(Y,Z).


    child(karim,rahim).
    child(kamal,jamal).
    child(selim,salam).
    child(rahim,rahimulla).
    child(jamal,jamaluddin).
    child(salam,salamuddin).

    parent(rahim,karim) :- child(karim,rahim).
    parent(jamal,kamal) :- child(kamal,jamal).
    parent(salam,selim) :- child(selim,salam).
    parent(rahimulla,rahim):- child(rahim,rahimulla).
    parent(jamaluddin,jamal) :- child(jamal,jamaluddin).
    parent(salamuddin,salam) :- child(salam,salamuddin).

    grand_parent(rahimulla,karim) :- child(karim,rahim),child(rahim,rahimulla).
    grand_parent(rahimulla,karim) :- parent(rahim,karim),parent(rahimulla,rahim).
    grand_parent(jamaluddin,kamal) :- child(kamal,jamal),child(jamal,jamaluddin).
    grand_parent(jamaluddin,kamal) :- parent(jamal,kamal),parent(jamaluddin,jamal).
    grand_parent(salamuddin,selim) :- child(selim,salam),child(salam,salamuddin).
    grand_parent(salamuddin,selim) :- parent(salam,selim),parent(salamuddin,salam).

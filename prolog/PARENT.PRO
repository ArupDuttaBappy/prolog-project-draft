domains
    childname,parentname,grandparentname=symbol
predicates
    child(childname,parentname)
    parent(parentname,childname)
    grand_parent(grandparentname,childname)
clauses
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

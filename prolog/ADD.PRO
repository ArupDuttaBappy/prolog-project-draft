domains
    number1,number2=integer
predicates
    start
    sum(number1, number2)
clauses
    start:-write("What's your name?"),nl,
    write("write a number"),nl,
    readint(X),nl,
    write("write another number"),nl,
    readint(Y),nl,
    write("the addition value is : "),nl,
    sum(X,Y).
    sum(X,Y):-S=X+Y,write(S).
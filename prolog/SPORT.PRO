domains
    person,sportname=symbol
predicates
    likes(person, sportname)
clauses
    likes(ellen, tennis).
    likes(john, football).
    likes(tom, baseball).
    likes(eric, cricket).
    likes(mark, tennis).
    likes(bill, Activity) :- likes(tom, Activity).
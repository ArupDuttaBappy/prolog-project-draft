domains
    
predicates
    food(foodname)
    lunch(lunchname)
    dinner(dinnername)
    meal(mealname)
    eats(goodmeal)
clauses
    food(burger).
    food(sandwich).
    food(pizza).
    lunch(sandwich).
    dinner(pizza).
    meal(pizza) :- food(pizza).
    meal(burger) :- food(burger).
    eats(sandwich) :- meal(pizza) and meal(apple).
    
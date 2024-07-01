fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(lemon, yellow).
fruit_color(orange, orange).
fruit_color(cherry, red).
fruit_color(plum, purple).

fruits_of_color(Color, Fruit) :-
    fruit_color(Fruit, Color).


list_fruits_of_color(Color) :-
    fruits_of_color(Color, Fruit),
    writeln(Fruit),
    fail.
list_fruits_of_color(_).
